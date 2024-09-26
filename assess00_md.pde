/*
MC Question: What are the parameters of the circle() function?
Options:
A) x, y, radius
B) y, x, radius
C) x, y, diameter
D) y, x, diameter

Answer: C

---
MC Question: Which of these is NOT a Java Primitive?
Options:
A) float
B) char
C) double
D) retType

Answer: D

---
Programming question: Write a function that draws triangles, rectangles, and circles at random coordinates and changing colors. 

Possible solution:
*/

void setup() {
  size (400, 400);

}

void draw() {
  background(255,255,255);
  triangle();
  rectangle();
  circle();
  println(frameCount);
}

void triangle () {if (frameCount % 3 == 0) {
  fill (#03FF50);
  int ranx = int(random(0,400));
  int rany = int (random(0,400));
  int ranx1 = int(random(0,400));
  int rany1 = int (random(0,400));
  int ranx2 = int(random(0,400));
  int rany2 = int (random(0,400));
  triangle (ranx, rany, ranx1, rany1, ranx2, rany2);
}
}

void rectangle() {if (frameCount % 5 == 0) {
  fill (#FF0318);
  int ranx = int (random(0,400));
  int rany = int (random(0,400));
  rect (ranx, rany, 100, 40);
}
}

void circle() {if (frameCount % 7 == 0) {
  fill (#0337FF);
  int ranx = int (random(0,400));
  int rany = int (random(0,400));
  circle (ranx, rany, 40);
}
}
