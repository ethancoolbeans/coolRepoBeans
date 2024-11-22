Ball[][] grid;
Ball projectile;

void setup() {
  background(255);
  drawGrid();
  projectile.move();
  projectile.display();
}

void draw() {
  background(255);
  drawGrid();
  projectile.display();
  processCollisions(projectile, g);
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
  for (int i = 0; i < g.length; i++) {
    for (int j = 0; j < g[i].length; j++) {
      g[i][j] = new Ball(
    }
  }
}

void newProjectile(int psize) {
  
}

void drawGrid(Ball[][] g) {
  
}

void processCollisions(Ball p, Ball[][] g) {
  
}
