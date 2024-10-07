void setup() {
  size(200, 400);
}

void draw() {
  //drawScale(x, y, h);
  //drawReading(x, y, w, h);
  drawThermometer(10, 10, width, height);
}

void drawScale(int x, float y, int h) {
  
}

void drawReading(int x, int y, int w, int h) {
  
}

void drawThermometer(int x, int y, int w, int h) {
  rect(x, y, w - (2 * x), h - (2 * y));
}
