/**
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

Handwritten Responses
Bubblesort:
Arrangement does impact the way the algorithm performs. There can be a variable amount of swaps performed, and depending on how many times it was executed, the amount of time required by the algorithm to finish changes. 
The most optimal order would be if all the rectangles were already laid out in desired order. This situation would concur minimal comparisons and swaps. 
Comp #: n(n-1)
Swap #: variable
Opposite of desired order would be the most suboptimal. This would concur the most swaps, thus taking the most time. 

Selectionsort:
Arrangement does not impact the way the algorithm performs. This is because a full pass is performed every single time, highlighting the biggest rectangle before moving it to the end. 
Comp #: n(n-1)
Swap #: n
There is no optimal/suboptimal arrangement. 

Insertionsort:
Arrangement does impact the way the algorithm performs. The algorithm depends on the arrangement to decide whether to perform a swap or not, and when swaps are performed, the amount of comparisons also increases until that specific rectangle at that very moment is placed in its correct position in the array.
Most optimal arrangement would be if the rectangles were already placed in desired positions. This would lead to minimal amounts of comparisons and 0 swaps.
Most suboptimal order would be complete opposite of desired order


 **/

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
