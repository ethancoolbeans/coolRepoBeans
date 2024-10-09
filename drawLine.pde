float x = 0;
void setup() {
  size(500, 500);
  frameRate(30);
}



void draw() {
  if (frameCount % 30 == 0) {
  line(0, 0, x, Line(5, x, 3));
  x += 1;
  }
}

float Line(float m, float x, float b) {
  return(m*x + b);
}

float parabola(float x, float a, float b, float c) {
  return(a*x*x + b*x + c);
}
