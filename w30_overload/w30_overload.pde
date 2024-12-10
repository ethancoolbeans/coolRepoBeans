```
Ethan Ma
NeXTCS
HW30 -- Method Overloading, making a second constructor that only takes in ONE of the original arguments
2024-12-10
time spent: 0.5
```

DISCO:
- Being able to change one datatype in a method
- Having 2 methods with the same name
QCC:
- Not 100% sure I understand method overloading, but does it take an object "stamp" and change the value of one of its
datatypes instead of making an entirely new object with entirely separate datatypes?

int MOUSE_MODE = 0;
int KEY_MODE = 1;
int NORMAL = 0;
int RESIZE = 1;
int RANDOM = 2;
int BACKWARDS = 1;

int MAX_STAMPS = 100;

int stampSize = 20;
int mode;
int moveMode;
Stamp current;
Stamp[] stamps;


void setup()
{
    size(600, 600);
    stamps = new Stamp[MAX_STAMPS];
    current = new Stamp(mouseX, mouseY, stampSize);
    mode = MOUSE_MODE;
    moveMode = NORMAL;
}//setup


void draw()
{
    background(255);
    drawStamps();

    if (mode == MOUSE_MODE) {
  current.move(mouseX, mouseY);
    }

    current.display();
}//draw


void keyPressed()
{
    if (key == 'm') {
  mode = MOUSE_MODE;
    }//set mouse mode
    if (key == 'k') {
  mode = KEY_MODE;
    }//set key mode
    if (key == 'n') {
  moveMode = NORMAL;
    }
    if (key == 'g') {
  moveMode = RESIZE;
    }
    if (key == 'r') {
  moveMode = RANDOM;
    }


    if (mode == KEY_MODE) {
  int direction = 0;
  if (keyCode == UP ||
      keyCode == DOWN ||
      keyCode == LEFT ||
      keyCode == RIGHT) {
      direction = keyCode;
      if (moveMode == NORMAL) {move(direction);}
      else if (moveMode == RESIZE) {move(direction, 1.2);}
      if (moveMode == RANDOM) {move();}
  }//movement

  if (key == ' ') {
    int i = findSpot();
    if (i != -1) {
  stamps[i] = current;  
    current = new Stamp(stampSize);
    }
  }//stamp

    }//in key mode
}//keyPressed


void mousePressed()
{
    if (mode == MOUSE_MODE) {
  stamp();
    }//in mouse mode
}//mousePressed


void drawStamps()
{
    for (int i=0; i<stamps.length; i++) {
  if (stamps[i] != null) {
      stamps[i].display();
  }//there is a stamp
    }//array loop
}//drawStamps


int findSpot()
{
    for (int i=0; i<stamps.length; i++) {
  if (stamps[i] == null) {
      return i;
  }//found spot
    }//array loop
    return -1;
}//findSpot


void stamp()
{
    int i = findSpot();
    if (i != -1) {
  stamps[i] = current;
  if (mode == MOUSE_MODE) {
      current = new Stamp(mouseX, mouseY, stampSize);
  }
  if (mode == KEY_MODE) {
      current = new Stamp(stampSize);
  }
    }//room in array
}//stamp

void move(int direction) {
  if (direction == UP) {current.position.y--;}
  else if (direction == DOWN) {current.position.y++;}
  else if (direction == LEFT) {current.position.x--;}
  else if (direction == RIGHT) {current.position.x++;}
}

void move(int direction, float sizeFactor) {
  if (direction == UP) {current.position.y--;}
  else if (direction == DOWN) {current.position.y++;}
  else if (direction == LEFT) {current.position.x--;}
  else if (direction == RIGHT) {current.position.x++;}
  current.stampSize *= sizeFactor;
}

void move() {
  current.position.x = random(width);
  current.position.y = random(height);
}
