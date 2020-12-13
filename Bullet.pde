class Bullet extends Floater
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
    protected int x,y = 0;
  Bullet(Spaceship theShip)
  {
    
    cenx = theShip.getX();
    ceny = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionY = 5*Math.sin(dRadians) + theShip.direcy();
    myDirectionX = 5*Math.cos(dRadians) + theShip.direcX();
  }
  public void show()
  {
  stroke(99,255,224);
 
    fill(99,255,224);
    ellipse((float)cenx,(float)ceny,(float)20,(float)20);
  }
  public void move()
  {
    cenx += myDirectionX;    
      ceny += myDirectionY;
  }
}
