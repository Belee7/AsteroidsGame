Star[] Sky = new Star[400];


 private class Star 
{
  private int myX, myY;
  Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  private void show()
  {
    noStroke();
    fill(255, 255, 255);
    ellipse(myX, myY, 2, 2);
  }
}