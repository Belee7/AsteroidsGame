Asteroid[] Field = new Asteroid[20];
class Asteroid extends Floater
{
  private int rotSpeed = ((int)Math.random() * 4) - 2;
  public void setX(int x) {
    myCenterX=x;
  }  
  public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY=y;
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
  public void setPointDirection(int degrees) {
    myPointDirection=degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  } 
  public Asteroid() {

    setX((int)(Math.random()* 500));
    setY((int)(Math.random()* 500));
    corners= 22;
    xCorners=new int[corners];
    yCorners=new int[corners];
    myColor=color(165, 93, 53);
    int[] xS ={1, 3, 5, 7, 8, 7, 6, 5, 7, 6, 5, 4, 2, 0, -3, -5, -7, -6, -8, -7, -5, -3-1};
    int[] yS ={-7, -6, -5, -6, -4, -2, 0, 2, 4, 6, 8, 7, 7, 8, 8, 7, 5, 3, -1, -3, -5, -6, -6};
    xCorners = xS;
    yCorners = yS;
    setDirectionX((Math.random())-0.5);
     setDirectionY((Math.random())-0.5);
 
  }

  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}