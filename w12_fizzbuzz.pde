int fizz = 3;
int buzz = 5;
int count = 0;

void setup() {
  size(300, 300);
  frameRate(30);
  background(0, 0, 0);
}

void draw() {
  if (frameCount % 15 == 0) {
    background(0, 0, 0);
    count += 1;
    textAlign(CENTER, CENTER);
    textSize(64);
    if (count % fizz == 0 && count % buzz == 0) {
      text("FizzBuzz!", 150, 100);
    }
    else if (count % fizz == 0) {
      text("Fizz", 150, 100);
    }
    else if (count % buzz == 0) {
      text("Buzz", 150, 100);
    }
    else {
      text(count, 150, 100);
    }
  }
}
