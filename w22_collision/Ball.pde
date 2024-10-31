//Class

class Ball {

  int x, y;
  int xspeed, yspeed;
  int bsize;
  color c;

  Ball() {
  c = SAFE_COLOR;
  bsize = BSIZE;
  x = int(random(bsize/2, width - bsize/2));
  y = int(random(bsize/2, height - bsize/2));

  xspeed = int(random(-6, 6));
  yspeed = int(random(-6, 6));
  }//constructor

  void display() {
  fill(c);
  circle(x, y, bsize);
    
  }//display
 
  boolean collisionCheck(Ball other) {
    if (dist(this.x, this.y, other.x, other.y) <= this.bsize/2 + other.bsize/2) {
      return true;
    } 
    else {
      return false;
    }
  }//check for collision
 
  void setColor(color newc) {
  c = newc;
  }//change color

  void move() {
  if (y >= height - bsize/2 ||
      y <= bsize/2) {
      yspeed *= -1;
  }//up/down bounce

  if (x >= width - bsize/2 ||
      x <= bsize/2) {
      xspeed *= -1;
  }//left/right bounce

  y+= yspeed;
  x+= xspeed;
  }//move

}//Ball
