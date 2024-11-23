Ball[][] grid;
Ball projectile;

void setup() {
  background(255);
  drawGrid(grid);
  projectile.move();
  projectile.display();
}

void draw() {
  background(255);
  drawGrid(grid);
  projectile.display();
  //processCollisions(projectile, g);
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
  projectile = new Ball(new PVector(width/2, height), psize);
}

void drawGrid(Ball[][] g) {
  for (int i = 0; i < g.length; i++) {
    for (int j = 0; j < g[i].length; j++) {
      g[i][j].display();
    }
  }
}

void processCollisions(Ball p, Ball[][] g) {
  
}
