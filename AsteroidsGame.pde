Spaceship one = new Spaceship();
Asteroids gg = new Asteroids();
Asteroids ggg [] = new Asteroids[20];
Stars[] starsNum = new Stars[100];

public void setup() 
{
  size(800,800);
  background(0);
  //one = new Spaceship();
  for(int i = 0;i < starsNum.length; i++) {starsNum[i] = new Stars();}
  for(int i = 0; i < ggg.length; i++) {ggg[i] = new Asteroids();}
}
public void draw() 
{
	background(0);
	for(int i = 0; i < starsNum.length; i++) {starsNum[i].show();}
	for(int i = 0; i < ggg.length; i++) {ggg[i].show(); ggg[i].move();}
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

