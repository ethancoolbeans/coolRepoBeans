/**
Ethan Ma
  NeXTCS
  HW22 -- collision detection
  2024-10-30
  timespent: 1
DISCO: 
QCC: 
*/

color SAFE_COLOR = color(0, 255, 255);
color COLLISION_COLOR = color(255, 0, 255);

//balls!
Ball b0;
Ball b1;

//other variables
int BSIZE;
boolean moving;

void setup() {
  size(400, 400);
  BSIZE = 40;
  moving = true;

  b0 = new Ball();
  b1 = new Ball();
}//setup

void draw() {
  background(0);
  if (!b0.collisionCheck(b1)) {
  b0.setColor(SAFE_COLOR);
  b1.setColor(SAFE_COLOR);
  } else {
  b0.setColor(COLLISION_COLOR);
  b1.setColor(COLLISION_COLOR);
  }
  b0.display();
  b1.display();

  if (moving) {
  b0.move();
  b1.move();
  }//moving

}//draw

void keyPressed() {
  if (key == ' ') {
  moving = !moving;
  }
  if (key == 'r') {
  b0 = new Ball();
  b1 = new Ball();
  }
}//keyPressed

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
