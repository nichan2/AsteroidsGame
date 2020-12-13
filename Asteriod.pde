class Asteroids extends Floater  
{   
    public void setx(int x) {cenx = x;}
    public int getX() {return (int) cenx;}
    public void sety(int y) {ceny = y;}
    public int getY() {return (int) ceny;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double direcX() {return myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double direcy() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}   
    public double getPointDirection() {return myPointDirection;} 
  protected int rotSpeed;
    private double x, y;
    private int AY, AX;
    public Asteroids()
    {   
        int variab = (int)(Math.random()*100);
        if(variab < 25) {AX = (int)(Math.random() * 800);}
        else if(variab < 50) {AX = (int)(Math.random() * 800); AY = 800;}
        else if(variab < 75) {AX = 0; AY = (int)(Math.random() * 800);}
        else {AX = 800; AY = (int)(Math.random() * 800);}
      
      corners = 12;
      cornerx = new int[corners];
      cornery = new int[corners];
      int[] xS = {2,5,10,8,10,3,-6,-7,-6,-9,-11,-8};
        int[] yS = {16,7,7,3,-10,-13,-10,-11,-3,0,4,18};
        cornerx = xS;
        cornery = yS;
      
        Colour = 76;
        Colour2=201;
        Colour3=240;
      ceny = 0 + AY;
      cenx = 0 + AX;
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
