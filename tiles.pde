/***********************
  SKILLS ASSESSED
  2: Controlling Color State
  9: Writing Readable Code
  11: Conditional Statements
  12: Loops
  See README.md for description of each skill.
 ***********************/

/***********************
 Global variables:
 cols, rows: number of tiles horizontally, vertically
 xSize, xWidth: size of each individual tile.
 count: needed to cycle through functions in draw()
 ***********************/
int rows;
int cols;
int xSize;
int ySize;
int count;


/***********************
  DO NOT MODIFY this function
    exception: you may vary frameRate for testing.

  When submitted, the frameRate should be 5
  ***********************/
void setup()
{
  size(600, 450);
  frameRate(5);
  xSize = 20;
  ySize = 25;
  rows = height/ySize;
  print(rows);
  cols = width/xSize;
  count = 0;
}//setup


/***********************
 DO NOT MODIFY DRAW.

 This will test each of the functions below.
 ***********************/
void draw()
{
  background(150);
  if (count < 5 ) {
    tile(rows, cols, xSize, ySize);
  }
  else if (count < 10) {
    alternateRows(rows, cols, xSize, ySize);
  }
  else if (count < 15) {
    triColor(rows, cols, xSize, ySize);
  }
  else if (count < 20) {
    rainbow(rows, cols, xSize, ySize);
  }
  else if (count < 25) {
    checkerboard(rows, cols, xSize, ySize);
  }
  else if (count < 30) {
    arrow(rows, cols, xSize, ySize);
  }
  count = (count + 1) % 30;
}//draw


/***********************
 Create a grid of rectangles using the  provided parameters.
 Each row should have numCols rectangles, and there should be numRows rows.
 Each rectangle should be rectWidth x rectHeight.
 ***********************/
void tile(int numRows, int numCols, int rectWidth, int rectHeight)
{

}//tile

/***********************
 Create a grid of rectangles using the  provided parameters.
 Select 2 fill colors.
 The fill color should alternate every other ROW.
 ***********************/
void alternateRows(int numRows, int numCols, int rectWidth, int rectHeight)
{

}//alternateRows

/***********************
 Create a grid of rectangles using the  provided parameters.
 The tiles from the left sdie up to one-fourth of the grid should be red.
 The tiles between one fourth of the grid and half of the grid should be green.
 The remaining tiles should be blue.

 You should not use the logical && or || operators. Keep your conditional statements to a single condition.
 ***********************/
void triColor(int numRows, int numCols, int rectWidth, int rectHeight)
{

}//tricolor


/***********************
 Create a grid of rectangles using the  provided parameters.
 The tiles should create a rainbow from the top down.

 There should be 6 separate colors, each one taking up the same number of rows.

 You should not use the logical && or || operators. Keep your conditional statements to a single condition.
 ***********************/
void rainbow(int numRows, int numCols, int rectWidth, int rectHeight)
{

}//rainbow


/***********************
 Create a grid of rectangles using the  provided parameters.

 Fill color should create a checkerboard pattern.
 ***********************/
 void checkerboard(int numRows, int numCols, int rectWidth, int rectHeight)
 {

 }//checkerboard


/***********************
Create a grid of rectangles using the  provided parameters.

Select 2 colors (for example, black and white)
The entire first column should be black.

The second column should have a white rectangle on the top and bottom, and the rest of the rectanlges between should be black.

The third column should have 2 white rectangles on the top and bottom, and the remaining rectanlges inbetween should be black.

This pattern should continue until the entire colum is white, and then all remaining columns will be white as well.
***********************/
void arrow(int numRows, int numCols, int rectWidth, int rectHeight)
{

}//arrow
