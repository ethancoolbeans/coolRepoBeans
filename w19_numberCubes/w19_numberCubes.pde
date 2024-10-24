/**
Ethan Ma
  NeXTCS
  HW18 -- Circles bounce off sides
  2024-10-22
  timespent: 0.6
DISCO: class Die { Die(int x, y, z) can have parameters. new Die (1, 2, 3);
QCC: I think I'm getting the hang of classes. This is where I gave up when I used to code!

*/
Die d0, d1;  //declare 2 vars of type Die

void setup()
{
  size(200, 200);
  d0 = new Die(25, height/2 - 25, 50);  //build a Die from the Die "blueprint" and assign to d0
  d1 = new Die(125, height/2 - 25, 50); //build a Die from the Die "blueprint" and assign to d1
}//setup


void draw()
{
  background(150);
  d0.display();  //ask d0 to perform its display action
  d1.display();  //ask d1 to perform its display action
}//draw


void keyPressed()
{
  if (key == ' ') {
    d0.roll();  //ask d0 to perform its roll action
    d1.roll();  //ask d1 to perform its roll action
  }//roll
}//if keyPressed
