void setup()
{
  size(500, 500);
  textAlign(CENTER, CENTER);
  background(225, 225, 225);
  noLoop();
}
Dice bob;
int sum = 0;
void draw()
{
  background(
179, 199, 255
);
  for (int x = 50; x < 450; x = x+60) {
    for (int y = 50; y < 450; y +=60) {
      bob = new Dice(x, y);
      sum = sum + bob.ben;
      bob.show();
    }
  }
  fill(1, 35, 128);
  text("Sum = " + sum, 250, 30);
}
void mousePressed()
{
  redraw();
  sum=0;
}
class Dice
{
 
  int myX, myY, ben;

  
  Dice(int x, int y) 
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    ben= ((int)(Math.random()*6)+1);
  }
  void show() {
    fill((int)(Math.random()*255)+30);
    rect(myX, myY, 50, 50);
    fill(62, 129, 156);
    if (ben == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    } else if (ben == 2) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
    } else if (ben == 3) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (ben == 4) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
    } else if (ben == 5) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (ben == 6) {
      ellipse(myX+12, myY+12, 10, 10);
      ellipse(myX+38, myY+38, 10, 10);
      ellipse(myX+38, myY+12, 10, 10);
      ellipse(myX+12, myY+38, 10, 10);
      ellipse(myX+12, myY+25, 10, 10);
      ellipse(myX+38, myY+25, 10, 10);
    }
  }
}

