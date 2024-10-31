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
