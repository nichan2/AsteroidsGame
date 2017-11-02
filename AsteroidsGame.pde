Spaceship one = new Spaceship();
Stars[] starsNum = new Stars[100];

public void setup() 
{
  size(800,800);
  background(0);
  one = new Spaceship();
  for(int i = 0;i < 100; i++)
  {	
  	starsNum[i] = new Stars();
  }
}
public void draw() 
{
	background(0);
	for(int i = 0; i < 100; i++)
	{
		starsNum[i].show();
	}
 	one.show();

 	one.move();
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
		one.accelerate(1);
	}
	//if(key == 's') //decelerate
	//{
		
		//if(((one.getDirectionX() != 0) || (one.getDirectionY() != 0)) || ((one.getDirectionX() != 0) || (one.getDirectionY() != 0)) )
		//{
			//one.accelerate(-1);
			
		//}
		//else
		//{
			//one.setDirectionX(0);
			//one.setDirectionY(0);
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

