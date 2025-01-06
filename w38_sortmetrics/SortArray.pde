class SortArray
{
  int[] haystack;
  int maxValue;
  int algorithm;
  boolean sorted;

  //BubbleSort vars
  int bsortEnd; //the last position to check when making a pass
  int bsortPos0; //the first position to compare each time
  int bsortPos1; //the second position to compare each time

  //SelectionSort vars courtesy of TAS of pd9
  int ssortEnd; //the last position to check when making a pass
  int ssortPos; //the current position to check
  int ssortMaxPos; //the position of the largest value so far

  // InsertionSort vars
  int isortEnd;
  int isortPos;
  int isortInsertPos;
  int isortValue;

  //Counter
  int comps = 0;
  int swaps = 0;

  SortArray(int algo, int dsize, int mvalue)
  {
    maxValue = mvalue;
    haystack = new int[dsize];
    randInts();
    resetSortVars();
    algorithm = algo;
  }//constructor
  void sortOnce()
  {
    if (algorithm == BUBBLE) {
      bubbleSortOnce();
    } else if (algorithm == SELECTION) {
      selectionSortOnce();
    } else if (algorithm == INSERTION) {
      insertionSortOnce();
    }
  }


  void resetSortVars()
  {
    sorted = false;
    swaps = 0;
    comps = 0;

    //bubble sort vars
    bsortPos0 = 0;
    bsortPos1 = 1;
    bsortEnd = haystack.length;

    //selection sort vars
    ssortEnd = haystack.length;
    ssortPos = 1;
    ssortMaxPos = 0;

    //inseration sort vars
    isortEnd = 1;
    isortPos = 1;
    isortValue = haystack[isortEnd];
  }//resetSortVars

  void bubbleSortOnce() {
    if (bsortEnd > 0) {
      if (bsortPos1 < bsortEnd) {
        comps++;
        if (haystack[bsortPos0] > haystack[bsortPos1]) {
          swap(bsortPos0, bsortPos1);
          swaps++;
        }
        bsortPos0++;
        bsortPos1++;
      }
      if (bsortEnd == bsortPos1) {
        bsortEnd--;
        bsortPos0 = 0;
        bsortPos1 = 1;
      }
    } else {
      sorted = true; // sorting is complete
    }
  } // bubbleSortOnce


  void selectionSortOnce()
  {
    if (ssortEnd > 0) {
      if (ssortPos < ssortEnd) {
        comps++;
        if (haystack[ssortPos] > haystack[ssortMaxPos]) {
          swaps++;
          ssortMaxPos = ssortPos;
        }//swap
        ssortPos++;
      }//working through a pass

      if (ssortPos ==ssortEnd) {
        ssortEnd--;
        swap(ssortMaxPos, ssortEnd);
        ssortPos = 1;
        ssortMaxPos = 0;
      }//set up next pass
    }//still need to sort
    else {
      sorted = true;
    }
  }//selectionSortOnce

  void insertionSortOnce()
  {
    if (isortEnd < haystack.length) {
      if (isortPos > 0) {
        comps++;
        if (haystack[isortPos-1] > isortValue) {
          haystack[isortPos] = haystack[isortPos-1];
          swaps++;
          isortPos--;
        }//shifting
        if (isortPos == 0 || haystack[isortPos -1] <= isortValue) {
          haystack[isortPos] = isortValue;
          isortEnd++;
          if (isortEnd != haystack.length) {
            isortPos = isortEnd;
            isortValue = haystack[isortPos];
          }
        }//inserting
      }
    }//still sorting
    else {//(isortEnd == haystack.length)
      sorted = true;
    }//done
  }//insertionSortOnce
  int getPosValue()
  {
    if ( sorted ) {
      return -1;
    }
    if (algorithm == BUBBLE) {
      return haystack[bsortPos1];
    }
    if (algorithm == SELECTION) {
      return haystack[ssortMaxPos];
    }
    if (algorithm == INSERTION) {
      return haystack[isortPos];
    } else {
      return -1;
    }
  }



  void swap(int p0, int p1) {
    int tmp = haystack[p0];
    haystack[p0] = haystack[p1];
    haystack[p1] = tmp;
  }//swap


  void randInts()
  {
    for (int i=0; i<haystack.length; i++) {
      haystack[i] = int(random(maxValue));
    }//loop
  }//randInts


  void showStats(boolean advanced)
  {
    fill(255);
    textAlign(LEFT, TOP);
    if (algorithm == BUBBLE) {
      text("Bubble Sort", 0, 0);
    } else if (algorithm == SELECTION) {
      text("Selection Sort", 0, 0);
    } else if (algorithm == INSERTION) {
      text("Insertion Sort", 0, 0);
    }
    String stats = "n: " + haystack.length;
    if (advanced) {
      stats += "\ncomps: " + comps;
      stats += "\nswaps: " + swaps;
    }//display advanced stats
    textAlign(RIGHT, TOP);
    text(stats, width, 0);
  }//showStats


  void display(boolean advanced)
  {
    int x = 0;
    int barWidth = width/dataSize;
    noStroke();
    for (int i=0; i<haystack.length; i++) {
      fill(255);
      if (algorithm == BUBBLE && i >= bsortEnd ||
        algorithm == SELECTION && i >= ssortEnd ||
        algorithm == INSERTION && i < isortEnd) {
        fill(255, 0, 255);
      }//color sorted area
      rect(x, height, barWidth, -haystack[i]);
      x+= barWidth;
    }//loop through array
    if ( !sorted ) {
      sortHighLights();
    }
    showStats(advanced);
  }//drawValues


  void sortHighLights()
  {
    int barWidth = width/dataSize;

    if (algorithm == BUBBLE) {
      fill(255, 255, 0);
      rect(barWidth*bsortPos0, height, barWidth, -haystack[bsortPos0]);
      rect(barWidth*bsortPos1, height, barWidth, -haystack[bsortPos1]);
    }//bubble sort highlights

    if (algorithm == SELECTION) {
      fill(255, 255, 0);
      rect(barWidth*ssortPos, height, barWidth, -haystack[ssortPos]);
      fill(0, 255, 255);
      rect(barWidth*ssortMaxPos, height, barWidth, -haystack[ssortMaxPos]);
    }//bubble sort highlights

    if (algorithm == INSERTION) {
      fill(255, 255, 0);
      rect(barWidth*isortPos, height, barWidth, -haystack[isortPos]);
      fill(0, 255, 255);
      rect(barWidth*isortPos, height, barWidth, -isortValue);
    }
  }//sortHighLights
}
