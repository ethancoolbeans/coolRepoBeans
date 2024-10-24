class Die { 
  int x, y;
  int dsize;
  int dvalue = 0;
  
  Die(int inX, int inY, int inSize) {
    x = inX;
    y = inY;
    dsize = inSize;
    dvalue = 0;
  }//constructor
  
  void display() {
    square(x, y, dsize);
    if (dvalue == 0) {
    } else {
    textSize(25);
    fill(0);
    text(dvalue, x + (dsize/2), y + (dsize/2));
    fill(255);
    }
  }//dsplay
  
  int roll() {
    dvalue = int(random(1, 7));
    return dvalue;
  }
  
  void reset() {
    dvalue = 0;
  }
}
