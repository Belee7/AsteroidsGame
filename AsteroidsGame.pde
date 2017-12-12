ArrayList <Asteroid> field=new ArrayList <Asteroid>();
ArrayList <Bullet> stream =new ArrayList <Bullet>();
ArrayList <Bullet2> stream2 =new ArrayList <Bullet2>();
Spaceship m = new Spaceship();
private boolean wIsPressed;
private boolean spaceIsPressed;
private boolean qIsPressed;
private boolean aIsPressed;
private boolean dIsPressed;
public void setup()
{                                                  
  size(500, 500);
  for (int i = 0; i < Sky.length; i++)
  {
    Sky[i] = new Star();
  }
  for (int i = 0; i < 40; i++)
  {
    field.add(new Asteroid());
  }
}
public void draw() 
{

  background(0);
  for (int i = 0; i < Sky.length; i++)
  {
    Sky[i].show();
  }
  for (int i = 0; i < field.size(); i++)
  {
    field.get(i).show();
    field.get(i).move();
  }
  m.show();
  m.move();

  if (spaceIsPressed == true && frameCount % 12 == 0) //move
    stream.add(new Bullet(m));
    if (qIsPressed == true && frameCount % 80 == 0) //move
    stream2.add(new Bullet2(m));
  for (int i = 0; i < stream.size(); i++)
  {
    stream.get(i).show();
    stream.get(i).move();
  }
  for (int i = 0; i < stream2.size(); i++)
  {
    stream2.get(i).show();
    stream2.get(i).move();
  }
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
  for (int i=0; i < field.size(); i++)
  {
    if (dist(m.getX(), m.getY(), field.get(i).getX(), field.get(i).getY()) < 20)
      field.remove(i);
  }
  for (int i = 0; i < field.size(); i++)
  {
    for (int b = 0; b < stream.size(); b++)
    {
      if (dist(stream.get(b).getX(), stream.get(b).getY(), field.get(i).getX(), field.get(i).getY()) < 12)
      {
        field.remove(i);
        stream.remove(b);
        break;
      }
    }
  }
  for (int i = 0; i < field.size(); i++)
  {
    for (int b = 0; b < stream2.size(); b++)
    {
      if (dist(stream2.get(b).getX(), stream2.get(b).getY(), field.get(i).getX(), field.get(i).getY()) < 40)
      {
        field.remove(i);
        //stream2.remove(b);
        break;
      }
    }
  }
}
public void  keyPressed()
{
  if (key == ' ') //move
  {
    spaceIsPressed = true;
  }
  if (key == 'q') //move
  {
    qIsPressed = true;
  }
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
  if (key == ' ') //move
  {
    spaceIsPressed = false;
  }
   if (key == 'q') //move
  {
    qIsPressed = false;
  }
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