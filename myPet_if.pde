int x = int(random(0, 450));
int y = int(random(0, 450));

void setup () {
  size(600, 600);
  frameRate(30);
  background(0, 0, 255);
  myPet(x, y);
}
void draw () {
  if (y == 0) {
    myPet(x, y);
  }
  else {
    if (frameCount % 60 == 0) {
      background(0, 0, 200);
      myPet(x, y -= 1); }
}}

void myPet(int x, int y) {
  strokeWeight (4);
  rect(x, y, 150, 110);
  fill(0, 0, 0);
  rect(x+25, y+5, 100, 100);
  stroke(0, 255, 0);
  line(x+55, y+55, x+55, y+35);
  line(x+105, y+55, x+105, y+35);
}
