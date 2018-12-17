class Asteroids extends Floater  
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
	protected int rotSpeed;
    private double x, y;
    private int asteroidsYSpawnCoord, asteroidsXSpawnCoord;
    public Asteroids()
    {   
        int variab = (int)(Math.random()*100);
        if(variab < 25) {asteroidsXSpawnCoord = (int)(Math.random() * 800);}
        else if(variab < 50) {asteroidsXSpawnCoord = (int)(Math.random() * 800); asteroidsYSpawnCoord = 800;}
        else if(variab < 75) {asteroidsXSpawnCoord = 0; asteroidsYSpawnCoord = (int)(Math.random() * 800);}
        else {asteroidsXSpawnCoord = 800; asteroidsYSpawnCoord = (int)(Math.random() * 800);}
    	
      corners = 12;
      xCorners = new int[corners];
      yCorners = new int[corners];
      int[] xS = {2,5,10,8,10,3,-6,-7,-6,-9,-11,-8};
        int[] yS = {16,7,7,3,-10,-13,-10,-11,-3,0,4,18};
        xCorners = xS;
        yCorners = yS;
    	
        myColor = 128;
        myColor2=128;
        myColor3=128;
    	myCenterY = 0 + asteroidsYSpawnCoord;
    	myCenterX = 0 + asteroidsXSpawnCoord;
    	myDirectionY = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	rotSpeed = (int)(Math.random() * 11) -5;
        if(rotSpeed == 0) {if(Math.random() < 0.5) {rotSpeed = (int)(Math.random()*4) + 1;} else {rotSpeed = (int)(Math.random()*4) - 5;}}
        x = (Math.random() * 5) - 2;
        if(x == 0) {if(Math.random() < 0.5) {x = (Math.random()*2) + 1;} else {x = (Math.random()*2) - 3;}}
        y = (Math.random() * 5) - 2;
        if(y == 0) {if(Math.random() < 0.5) {y = (Math.random()*2) + 1;} else {y = (Math.random()*2) - 3;}}
        
        
    }
    public void move()
    {
		myPointDirection = myPointDirection + rotSpeed;
        setDirectionY(x);
        setDirectionX(y);
		super.move();

    }
}