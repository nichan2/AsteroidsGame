Spaceship one = new Spaceship();
ArrayList<Asteroids> numAsteroids = new ArrayList<Asteroids>(); 
Stars[] starsNum = new Stars[100];
ArrayList<Bullet> numBullets = new ArrayList<Bullet>();
int Assdes = 0;
int hp = 100;

public void setup() 
{
  size(800,800);
  background(0);
  //one = new Spaceship();
  for(int i = 0;i < starsNum.length; i++) {starsNum[i] = new Stars();}
  for(int i = 0; i < 20; i++) {numAsteroids.add(new Asteroids());}

}
public void draw() 
{
  background(0);
  for(int i = 0; i < starsNum.length; i++) {starsNum[i].show();}
  for(int i = 0; i < numAsteroids.size(); i++) {numAsteroids.get(i).show(); numAsteroids.get(i).move();}
   one.show();
   one.move();
  for(int i = 0; i < numAsteroids.size(); i++)
  {
    if(dist(numAsteroids.get(i).getX(),numAsteroids.get(i).getY(),one.getX(),one.getY()) < 25)
    {
      numAsteroids.remove(i);
      hp=hp-10;
    }
    for(int k = 0;k < numBullets.size(); k++)
  {
    numBullets.get(k).show();
    numBullets.get(k).move();
    if(dist(numAsteroids.get(i).getX(),numAsteroids.get(i).getY(),numBullets.get(k).getX(),numBullets.get(k).getY()) < 35)
    {
      numAsteroids.remove(i);
      numBullets.remove(k);
      numAsteroids.add(new Asteroids());
      Assdes++;
    }
  }
    
  }
  
 
}
public void keyPressed()
{
  if(key == 'h') //hyperspace
  {
    //System.out.println("nnn");
    one.setDirectionX(0);
    one.setDirectionY(0);
    one.setPointDirection((int)(Math.random()*360));
    one.setX((int)(Math.random()*800));
    one.setY((int)(Math.random()*800));

  }
  if(key == 'w') //accelerate
  {
    one.accelerate(0.5);
  }

  if(key == 'a') //turn left
  {
    one.turn(-15);
  }
  if(key == 'd') //turn right
  {
    one.turn(15);
  }
  if(key == ' ')
  {
    numBullets.add(new Bullet(one));
  }
}
