Spaceship m = new Spaceship();
private boolean wIsPressed;
private boolean aIsPressed;
private boolean dIsPressed;
public void setup()
{
  size(500, 500);
  for (int i = 0; i < Sky.length; i++)
  {
    Sky[i] = new Star();
  }
  for (int i = 0; i < Field.length; i++)
  {
    Field[i] = new Asteroid();
  }
}
public void draw() 
{

  background(0);
  for (int i = 0; i < Sky.length; i++)
  {
    Sky[i].show();
  }
  for (int i = 0; i < Field.length; i++)
  {
    Field[i].show();
    Field[i].move();
    
  }
  m.show();
  m.move();

 
  if (wIsPressed == true) //move
  {
    m.accelerate(0.05);
  }
  if (aIsPressed == true)//left
  {
    m.turn(-7);
  }
  if (dIsPressed == true) //right
  {
    m.turn(7);
  }
}
public void  keyPressed()
{
  if (key == 'w') //move
  {
    wIsPressed = true;
  }
  if (key == 'a') //left
  {
    aIsPressed = true;
  }
  if (key == 'd') //right
  {
    dIsPressed = true;
  }
  if (key == 's') //hyperspace
  {

    m.setX((int)(Math.random()*500));
    m.setY((int)(Math.random()*500));
    m.turn((int)(Math.random()*300));
    m.setDirectionX(0);
    m.setDirectionY(0);
  }
}
public void keyReleased()
{
  if (key == 'w') //move
  {
    wIsPressed = false;
  }
  if (key == 'a') //left
  {
    aIsPressed = false;
  }
  if (key == 'd') //right
  {
    dIsPressed = false;
  }
}