class Bullet extends Floater
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
    protected int x,y = 0;
  Bullet(Spaceship theShip)
  {
    
    xcenter = theShip.getX();
    ycenter = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    ydirection = 5*Math.sin(dRadians) + theShip.getDirectionY();
    xdirection = 5*Math.cos(dRadians) + theShip.getDirectionX();
  }
  public void show()
  {
  stroke(90,24,154);
 
    fill(90,24,154);
    ellipse((float)xcenter,(float)ycenter,(float)5,(float)5);
  }
  public void move()
  {
    xcenter += xdirection;    
      ycenter += ydirection;
  }
}
