int squareX;
int squareY;
int circleX;
int circleY;
int lineX;
int lineY;
boolean movement;

boolean line = true;

void setup() {
  size(600, 400);
  squareX = width/2;
  squareY = height/2;
  movement = true;
  lineX = squareX;
  lineY = squareY;
  fill(255, 0, 255);
}//setup

void draw() {
  background(30, 30, 30);
  circle(mouseX, mouseY, 30);
  circleX = mouseX;
  circleY = mouseY;
  square(squareX, squareY, 30);
}

void mouseClicked() {
  stroke(255, 0, 255);
  line = true;
  if (line == true) {
    line(circleX, circleY, squareX, squareY);
  } else {
    line = false;
  }
}
