Spaceship one = new Spaceship();
ArrayList<Asteroids> numAsteroids = new ArrayList<Asteroids>(); 
Stars[] starsNum = new Stars[100];
Bullet two = new Bullet(one);

public void setup() 
{
  size(800,800);
  background(0);
  //one = new Spaceship();
  for(int i = 0;i < starsNum.length; i++) {starsNum[i] = new Stars();}
  for(int i = 0; i < 20; i++) {numAsteroids.add(new Asteroids());}
  	two.show();
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
    }
  }
  two.show();
  two.move();
}
public void keyPressed()
{
	if(key == ' ')


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
	//if(key == 's') //decelerate
	//{
		
		//if( ((one.getDirectionX() > -1) && (one.getDirectionX() < 1)) || ((one.getDirectionY() > -1) && (one.getDirectionY() < 1)) )

		//{
			//one.setDirectionX(0);
			//one.setDirectionY(0);			
		//}
		//else
		//{
			//one.accelerate(-1);
		//}
	//}
	if(key == 'a') //turn left
	{
		one.turn(-15);
	}
	if(key == 'd') //turn right
	{
		one.turn(15);
	}
}