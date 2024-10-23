/**
  Ethan Ma
  NeXTCS
  HW18 -- Circles bounce off sides
  2024-10-22
  timespent: 0.6

  CODE FOR ANALYSIS for work18

  TASK 0 response:
  The circles start at the center and move until they touch the sides. Then their velocity reverses and they bounce the other direction.
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  TASK 1 response:
  'r' brings the circles back to the center. ' ' makes the circles stop wherever they are.
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  TASK 2 response:  
  The vertical moving circle has udy, which corresponds to vertical movement. The horizontal moving circle has lrx, which corresponds to horizontal movement. Since these two 
  circles only move on one axis, having a distinct variable for the x and y values of each circle would be unnecessary. 
  udy and lrx also give both circles the same starting point.
  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 */

//variables for the up-down circle
int udy, udspeed;
//variables for the left-right circle
int lrx, lrspeed;

int xcor, xspeed;
int ycor, yspeed;

//other variables
int csize;
boolean moving;

void setup() 
{
  size(600, 400);
//3 circles
  udy = height/2;
  lrx = width/2;
  udspeed = lrspeed = 1;  
  csize = 40;
//4th cirlce
  xcor = int(random(csize, width-csize));
  ycor = int(random(csize, height-csize));
  xspeed = -1;
  yspeed = 1;
  moving = true;
}//setup


void draw() 
{
  background(0);

  circle(width/2, udy, csize);
  circle(lrx, height/2, csize);
  circle(lrx, udy, csize);
  circle(xcor, ycor, csize);

  if (moving) {
    if (udy >= height - csize/2 ||
        udy <= csize/2) {
        udspeed *= -1;
    }//up/down bounce
    
    if (lrx >= width - csize/2 ||
        lrx <= csize/2) {
        lrspeed *= -1;
    }//left/right bounce

    udy += udspeed;
    lrx += lrspeed;
//for 4th circle
    if (ycor >= height - csize/2 ||
        ycor <= csize/2) {
        yspeed *= -1;
    }//up/down bounce
    
    if (xcor >= width - csize/2 ||
        xcor <= csize/2) {
        xspeed *= -1;
    }//left/right bounce
    
    ycor += yspeed;
    xcor += xspeed;
  }//moving

}//draw


void keyPressed() 
{
  if (key == ' ') {
    moving = !moving;
  }
  if (key == 'r') {
    udy = height/2;
    lrx = width/2;
//4th circle
    ycor = height/2;
    xcor = width/2;
  }
}//keyPressed
