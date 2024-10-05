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
void tile(int numRows, int numCols, int rectWidth, int rectHeight) {
  background(255);
  for (int i = 0; i < numRows; i += 1) {
    line(0, rectHeight * i, width, rectHeight * i);
  for (int z = 0; z < numCols; z += 1) {
    line(rectWidth * z, 0, rectWidth * z, height);}
}}//tile

/***********************
 Create a grid of rectangles using the  provided parameters.
 Select 2 fill colors.
 The fill color should alternate every other ROW.
 ***********************/
void alternateRows(int numRows, int numCols, int rectWidth, int rectHeight){
  background(255);
  for (int i = 0; i < numRows; i += 1) {
    if (i % 2 == 1) {
      fill(0); 
      rect(0, rectHeight * i, width, rectHeight);
    }
    else {
    fill(255);
    rect(0, rectHeight * i, width, rectHeight);}
  }
    for (int z = 0; z < numCols; z += 1) {
    line(rectWidth * z, 0, rectWidth * z, height);}
}//alternateRows

/***********************
 Create a grid of rectangles using the  provided parameters.
 The tiles from the left sdie up to one-fourth of the grid should be red.
 The tiles between one fourth of the grid and half of the grid should be green.
 The remaining tiles should be blue.

 You should not use the logical && or || operators. Keep your conditional statements to a single condition.
 ***********************/
void triColor(int numRows, int numCols, int rectWidth, int rectHeight){
  for (int z = 0; z < numCols; z += 1) {
    line(rectWidth * z, 0, rectWidth * z, height);
    if (z <= 7) {
      fill(255, 0, 0);}
      else if (z <= 15) {
      fill(0, 255, 0);}
      else {fill(0, 0, 255);}
    rect(rectWidth * z, 0, rectWidth, height);}
  for (int i = 0; i < numRows; i += 1) {
    line(0, rectHeight * i, width, rectHeight * i);
}}//tricolor


/***********************
 Create a grid of rectangles using the  provided parameters.
 The tiles should create a rainbow from the top down.

 There should be 6 separate colors, each one taking up the same number of rows.

 You should not use the logical && or || operators. Keep your conditional statements to a single condition.
 ***********************/
void rainbow(int numRows, int numCols, int rectWidth, int rectHeight){
  for (int i = 0; i < numRows; i += 1) {
    line(0, rectHeight * i, width, rectHeight * i);
    if (i <= 2) {
      fill(255, 0, 0);}
      else if (i <= 5) {fill(255, 125, 0);}
      else if (i <= 8) {fill(255, 255, 0);}
      else if (i <= 11) {fill(0, 255, 0);}
      else if (i <= 14) {fill(0, 0, 255);}
      else {fill(125, 0, 255);}
    rect(0, rectHeight * i, width, rectHeight);}
  for (int z = 0; z < numCols; z += 1) {
    line(rectWidth * z, 0, rectWidth * z, height);}
}//rainbow


/***********************
 Create a grid of rectangles using the  provided parameters.

 Fill color should create a checkerboard pattern.
 ***********************/
void checkerboard(int numRows, int numCols, int rectWidth, int rectHeight){
  for (int y = 0; y < numRows; y += 1) {
    if (y % 2 == 0) {
      for (int i = 0; i < numCols; i += 1) {
       if (i % 2 == 0) {
       fill(255);}
       else{fill(0);}
       rect(rectWidth * i, rectHeight * y, rectWidth, rectHeight);}}
    else {for (int i = 0; i < numCols; i+= 1) {
      if (i % 2 == 1) {
        fill(255);}
        else{fill(0);}
        rect(rectWidth * i, rectHeight * y, rectWidth, rectHeight);}}}}//checkerboard


/***********************
Create a grid of rectangles using the  provided parameters.

Select 2 colors (for example, black and white)
The entire first column should be black.

The second column should have a white rectangle on the top and bottom, and the rest of the rectanlges between should be black.

The third column should have 2 white rectangles on the top and bottom, and the remaining rectanlges inbetween should be black.

This pattern should continue until the entire colum is white, and then all remaining columns will be white as well.
***********************/
void arrow(int numRows, int numCols, int rectWidth, int rectHeight){
  background(255);
  for (int i = 0; i < numRows; i += 1) {
    line(0, rectHeight * i, width, rectHeight * i);
  for (int z = 0; z < numCols; z += 1) {
    line(rectWidth * z, 0, rectWidth * z, height);}
  for (int d = 0; d < numRows/2; d += 1) {fill(0);
    rect(rectWidth * d, rectHeight * d, rectWidth, int(height - (d * 2 * rectHeight)));}}
  }//arrow
