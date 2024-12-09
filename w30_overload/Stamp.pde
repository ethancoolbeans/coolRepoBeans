class Stamp
{

  //attributres
  PVector position;
  int stampSize;
  color c;


  //constructor
  Stamp(int x, int y, int ss)
  {
    position = new PVector(x, y);
    stampSize = ss;
    c = color(255, 0, 255);
  }//default constructor

  Stamp(int ss) 
  {
    stampSize = ss;
    position = new PVector(random(0, width), random(0, height));
  }


  //methods below

  void display()
  {
    fill(c);
    circle(position.x, position.y, stampSize);
  }//display()


  void move(int x, int y)
  {
    position.x = x;
    position.y = y;
  }//move(x,y)
}//stamp
