class Spaceship extends Floater  
{ 
  public Spaceship()
  {
    corners = 16;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = 4;
    xCorners[1] = -3;
    yCorners[1] = 8;
    xCorners[2] = 7;
    yCorners[2] = 8;
    xCorners[3] = 9;
    yCorners[3] = 7;
    xCorners[4] = 9;
    yCorners[4] = 6;
    xCorners[5] = 7;
    yCorners[5] = 5;
    xCorners[6] = 12;
    yCorners[6] = 3;
    xCorners[7] = 12;
    yCorners[7] = 1;
    xCorners[8] = 8;
    yCorners[8] = 1;
    xCorners[9] = 8;
    yCorners[9] = -1;
    xCorners[10] = 12;
    yCorners[10] = -1;
    xCorners[11] = 12;
    yCorners[11] = -3;
    xCorners[12] = 7;
    yCorners[12] = -5;
    xCorners[13] = 4;
    yCorners[13] = -8;
    xCorners[14] = -4;
    yCorners[14] = -8;
    xCorners[15] = -8;
    yCorners[15] = -4;
    myCenterX = 150;
    myCenterY = 150;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = 220;
  }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if (wIsPressed == true) //move
    {
      noStroke();
      fill(0, 191, 255);
      rect (-10.5, -5, 2.5, 10);
    }


    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
 public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY=y;
  }   
   public void setX(int x) {
    myCenterX=x;
  }   
  public int getY() {
    return (int)myCenterY;
  }   
  public void setDirectionX(double x) {
    myDirectionX = x;
  }   
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY = y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }    
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  }
}