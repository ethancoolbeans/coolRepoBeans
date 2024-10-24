class Die { 
  int x, y;
  int dsize;
  int dvalue;
  
  Die(int inX, int inY, int inSize) {
    x = inX;
    y = inY;
    dsize = inSize;
    dvalue = int(random(1, 7));
  }//constructor
  
  void display() {
    square(x, y, dsize);
    textSize(25);
    fill(0);
    text(dvalue, x + (dsize/2), y + (dsize/2));
    fill(255);
  }//dsplay
  
  void roll() {
    dvalue = int(random(1, 7));
  }
}
