Ball[][] grid;
Ball projectile;

int ballSize = 50;
boolean moveRight = true;

void setup() {
  background(255);
  size(500, 500);
  grid = new Ball[3][5];
  makeBalls(grid, ballSize);
  drawGrid(grid);
  newProjectile(10);
  frameRate(30);
}

void draw() {
  background(255);
  drawGrid(grid);
  projectile.display();
  projectile.move();
  processCollisions(projectile, grid);
  if (frameCount % 30 == 0) {
    moveBalls(grid, ballSize);
  }
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

void makeBalls(Ball[][] g, int size) {
  for (int i = 0; i < g.length; i++) {
    for (int j = 0; j < g[i].length; j++) {
      g[i][j] = new Ball(new PVector(size/2 + size*j, size/2 + size*i), size);
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

void moveBalls(Ball[][] g, int size) {
  if (moveRight) {
    for (int i = 0; i < g.length; i++) {
      for (int j = 0; j < g[i].length; j++) {
        if (g[i][j] != null) {
          g[i][j].center.x += size;
          if (g[i][j].center.x > width-size) {
            moveRight = !moveRight;
            g[i][j].center.y += size;
          }
        }
      }
    }
  } else {
    for (int i = 0; i < g.length; i++) {
      for (int j = 0; j < g[i].length; j++) {
        if (g[i][j] != null) {
          g[i][j].center.x -= size;
          if (g[i][j].center.x < size) {
            moveRight = !moveRight;
            g[i][j].center.y += size;
          }
        }
      }
    }
  }
}
