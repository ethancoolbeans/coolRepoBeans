/*
```
 Ethan Ma
 NeXTCS
 HW38 -- sortmetrics, measuring the number of comparisons and swaps for a set to become completely sorted
 2024-1-5
 time spent: 0.5
 ```
 
 DISCO:
 - N/A 
 QCC:
 - I'm not sure how swaps and comparisons should be counted for insertion sort. The left-most unsorted bar is compared
consecutively with every bar in the sorted section. Should I increment comps for every comparison, and swaps for every swap 
towards the left?
 */

int BUBBLE = 0;
int SELECTION = 1;
int INSERTION = 2;

int dataSize;
int maxValue;
SortArray sorty;

boolean liveSort;


void setup()
{
  size (600, 400);
  background(0);
  textSize(25);
  dataSize =20;
  maxValue = max(300, dataSize);
  sorty = new SortArray(BUBBLE, dataSize, maxValue);
}//setup


void draw()
{
  background(0);
  sorty.display(true);
  if (liveSort) {
    sorty.sortOnce();
  }
}//draw


void keyPressed()
{
  if (key == 'r') {
    reset();
  }//reset
  if (key == ' ') {
    liveSort = !liveSort;
  }
  if (keyCode == RIGHT) {
    sorty.sortOnce();
  }
  if (key == '1') {
    sorty.algorithm = BUBBLE;
    reset();
  }
  if (key == '2') {
    sorty.algorithm = SELECTION;
    reset();
  }
  if (key == '3') {
    sorty.algorithm = INSERTION;
    reset();
  }
}//keyPressed


void reset()
{
  sorty.randInts();
  sorty.resetSortVars();
}//reset for more sorting
