Spaceship one = new Spaceship();

public void setup() 
{
  size(800,800);
  one = new Spaceship();
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
		one.setX((int)(Math.random()*800));
		one.setY((int)(Math.random()*800));
	}
	if(key == 'w') //accelerate
	{
		one.accelerate(10);
	}
	if(key == 's') //accelerate
	{
		one.accelerate(-10);
	}
	if(key == 'a') //turn left
	{
		one.turn(-10);
	}
	if(key == 'd') //turn right
	{
		one.turn(10);
	}
}

