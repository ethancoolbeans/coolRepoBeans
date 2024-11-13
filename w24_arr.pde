/***********************************************
TASK 0 RESPONSES:

1. last index of values: 9
2. to determine the size of an array: look at new int[i] and arr.length
3. values[4]
4. it gives each index of an array a random integer between low and high

***********************************************/

int[] values;


void setup()
{
    size(300, 200);

    values = new int[10];
    randomArray(values, 50, height);

    drawBars(values, width/values.length);

}//setup()


void randomArray(int[] data, int low, int high)
{
    for (int i=0; i<data.length; i++) {
  data[i] = int(random(low, high));
    }//array loop
}//randomArray()


void drawBars(int[] data, int barWidth)
{
    for (int i=0; i<data.length; i++) {
      if (i == arrayMax(data)) {
        fill(255, 0, 0);
      } else {
        fill(255, 255, 255);
      }
      rect(i * barWidth, height, barWidth, -data[i]);
    }    
}//drawValues()

int arrayMax(int[] data)
{
  int max = 0;
  for (int i=0; i<data.length; i++) {
    if (data[i] > data[max]) {
      max = i;
    }
  }
  return max;
}
