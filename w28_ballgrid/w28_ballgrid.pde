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
  
}

void newProjectile(int psize) {
  
}

void drawGrid(Ball[][] g) {
  
}

void processCollisions(Ball p, Ball[][] g) {
  
}
