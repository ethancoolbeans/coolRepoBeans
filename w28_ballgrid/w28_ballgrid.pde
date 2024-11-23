```
Ethan Ma
NeXTCS
HW28 -- 2D Arrays, type Ball in each index, Collision Check
2024-11-23
time spent: 0.8
```
DISCO:
- You can store class types in an array (e.g. an array of type Ball)
- To apply the same method to every Ball, iterate through the array like normal
QCC:
N/A


Ball[][] grid;
Ball projectile;

void setup() {
  background(255);
  size(500, 500);
  grid = new Ball[3][5];
  makeBalls(grid);
  drawGrid(grid);
  newProjectile(10);
}

void draw() {
  background(255);
  drawGrid(grid);
  projectile.display();
  projectile.move();
  processCollisions(projectile, grid);
}

void keyPressed() {
  if (keyCode == ' ') {
    projectile.yspeed = -1;
  }
  if (keyCode == LEFT) {
    projectile.center.x --;
  }
  if (keyCode == RIGHT) {
    projectile.center.x ++;
  }
}

void makeBalls(Ball[][] g) {
  int size = 50;
  for (int i = 0; i < g.length; i++) {
    for (int j = 0; j < g[i].length; j++) {
      g[i][j] = new Ball(new PVector(50 + size*j, 50 + size*i), size);
    }
  }
}

void newProjectile(int psize) {
  projectile = new Ball(new PVector(width/2, height-psize), psize);
}

void drawGrid(Ball[][] g) {
  for (int i = 0; i < g.length; i++) {
    for (int j = 0; j < g[i].length; j++) {
      if (g[i][j] != null) {
        g[i][j].display();
      } else {
      }
    }
  }
}

void processCollisions(Ball p, Ball[][] g) {
  for (int i = 0; i < g.length; i++) {
      for (int j = 0; j < g[i].length; j++) {
        if (g[i][j] != null) {
          if (p.collisionCheck(g[i][j])) {
            g[i][j] = null;
            newProjectile(10);
          }
        }
      }
  }
}
