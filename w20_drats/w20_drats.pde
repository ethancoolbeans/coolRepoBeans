Die d0, d1;  //declare 2 vars of type Die

int target;
int score;
boolean lose;

void setup()
{
  size(200, 200);
  d0 = new Die(25, height/2 - 25, 50);  //build a Die from the Die "blueprint" and assign to d0
  d1 = new Die(125, height/2 - 25, 50); //build a Die from the Die "blueprint" and assign to d1
}//setup


void draw()
{
  background(150);
  d0.display();  //ask d0 to perform its display action
  d1.display();  //ask d1 to perform its display action
  textSize(25);
  if (lose) {
    text("lost", width/2, height/2);
  } else if (target == 0) {
    text("no target", width/2, 50);
  } else {
    text("target: " + target, width/2, 50);
    text("score: " + score, width/2, 150);
  }
}//draw


void keyPressed()
{
  if (lose) {
  } else {
    if (key == ' ') {
      d0.roll();  //ask d0 to perform its roll action
      d1.roll();  //ask d1 to perform its roll action
      updateScore(d0.roll() + d1.roll());
    }//roll
  }
  if (key == 'r') {
    restart();
  }
}//if keyPressed

void restart() {
  target = 0;
  score = 0;
  d0.reset();
  d1.reset();
  lose = false;
}

void updateScore(int roll) {
  if (target == 0) {
    target = roll;
    if (roll == 2) {
      lose = true;
    }
  } else {
    if ((roll == 7) || (roll == 11)) { 
      lose = true;
    } else {
      score += roll;
    }
  }
}
