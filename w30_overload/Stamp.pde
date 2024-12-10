class Stamp
{
    
    //attributes
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
  position = new PVector(random(width), random(height));
  stampSize = ss;
  c = color(255, 0, 255);
    }//default constructor
    
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
