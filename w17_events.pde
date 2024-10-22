Ethan Ma
NeXTCS
HW17 -- Beginning of Event-based Stuff
2024-10-21
time spent: 0.6
### DISCO: Event-based functions like mousePressed() run once whenever triggered. 
### QCC: Comment - event-based functions can be used to change a global variable. Draw() will run with a new value in the global var. 
### Question - can I do this without boolean lineExist and boolean space? 

int squareX;
int squareY;
int circleX;
int circleY;
int lineX;
int lineY;
boolean movement;

boolean lineExist = false;
boolean space = false;

void setup() {
  size(600, 400);
  squareX = width/2;
  squareY = height/2;
  movement = true;
  lineX = squareX;
  lineY = squareY;
  fill(255, 0, 255);
  stroke(255, 0, 255);
}//setup

void draw() {
  background(30, 30, 30);
  circle(mouseX, mouseY, 30);
  if (space == false) {
    if (lineExist == true) {
      lineX = mouseX; 
      lineY = mouseY;
      line(lineX, lineY, squareX, squareY);
    }
  }
  square(squareX, squareY, 30);
}

void keyPressed() {
  if (key == ' ') {
    if (space == false) {
      space = true;
    } else {
      space = false;
    }
  } //space
  if (space == false) {
  if (key == 'q') {
    squareX = width/2;
    squareY = height/2;
  } //reset square
  if (key == 'w') {
    squareY --;
  } //w up
  if (key == 's') {
    squareY ++;
  } //s down
  if (key == 'a') {
    squareX --;
  } //a left
  if (key == 'd') {
    squareX ++;
  } //d right
  }
}

void mouseClicked() {
  if (lineExist == false) {
    lineExist = true;
  } else {
    lineExist = false;
  }
} //draw line from circle to square
