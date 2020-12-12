class Asteroids extends Floater  
{   
    public void setx(int x) {xcenter = x;}
    public int getX() {return (int) xcenter;}
    public void setY(int y) {ycenter = y;}
    public int getY() {return (int) ycenter;}
    public void setDirectionX(double x) {xdirection = x;}
    public double getDirectionX() {return xdirection;}
    public void setDirectionY(double y) {ydirection = y;}
    public double getDirectionY() {return ydirection;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}   
    public double getPointDirection() {return myPointDirection;} 
  protected int rotspeed;
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
      
        Colour= 172;
        Colour2=176;
        Colour3=189;
      ycenter = 0 + asteroidsYSpawnCoord;
      xcenter = 0 + asteroidsXSpawnCoord;
      ydirection = 0;
      ydirection = 0;
      myPointDirection = 0;
      rotspeed = (int)(Math.random() * 11) -5;
        if(rotspeed == 0) {if(Math.random() < 0.5) {rotspeed = (int)(Math.random()*4) + 1;} else {rotspeed = (int)(Math.random()*4) - 5;}}
        x = (Math.random() * 5) - 2;
        if(x == 0) {if(Math.random() < 0.5) {x = (Math.random()*2) + 1;} else {x = (Math.random()*2) - 3;}}
        y = (Math.random() * 5) - 2;
        if(y == 0) {if(Math.random() < 0.5) {y = (Math.random()*2) + 1;} else {y = (Math.random()*2) - 3;}}
        
        
    }
    public void move()
    {
    myPointDirection = myPointDirection + rotspeed;
        setDirectionY(x);
        setDirectionX(y);
    super.move();

    }
}
