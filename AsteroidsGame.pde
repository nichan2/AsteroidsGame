Spaceship one = new Spaceship();

public void setup() 
{
  size(800,800);
  one = new Spaceship();
  for(int i = 0; i < 20; i++)
		{
			fill(255);
			ellipse((int)(Math.random()*800),(int)(Math.random()*800),10,10);
		}
}
public void draw() 
{
background(0);

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

