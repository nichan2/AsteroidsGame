class Bullet extends Floater
{
	public void setX(int x) {myCenterX = x;}
    public int getX() {return (int) myCenterX;}
    public void setY(int y) {myCenterY = y;}
    public int getY() {return (int) myCenterY;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double getDirectionX() {return myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}   
    public double getPointDirection() {return myPointDirection;} 
    protected int x,y = 0;
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionY = 5*Math.sin(dRadians) + theShip.getY();
		myDirectionX = 5*Math.cos(dRadians) + theShip.getX();
	}
	public void show()
	{
		x = (int)myDirectionX;
		y = (int)myDirectionY;
		//ellipse(x,y,5,5);
	}
	public void move()
	{
		ellipse(x,y,5,5);
		x = x + 5;
		y = y + 5;
	}

}
