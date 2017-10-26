Spaceship one = new Spaceship();

public void setup() 
{
  size(800,800);
  one = new Spaceship();
}
public void draw() 
{
  one.show();

}
public void keyPressed()
{
	if(key == 'h')
	{
		one.accelerate(10);
	}
}

