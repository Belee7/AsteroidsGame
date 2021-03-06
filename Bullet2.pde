class Bullet2 extends Floater
{
  public Bullet2(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = (5 * Math.cos(dRadians)) + theShip.getDirectionX();
    myDirectionY = (5 * Math.sin(dRadians)) + theShip.getDirectionY();
  }
   public void move ()  
  {           
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;       
  }
  public void show()
  {
    
    fill(176,224,230);
    noStroke();
     ellipse((float)myCenterX, (float)myCenterY, 28, 28);
     fill(135,206,250);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 25, 25);

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
    myDirectionX=x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY=y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }  
 
  public double getPointDirection() {
    return myPointDirection;
  } 
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
}