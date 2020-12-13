class Spaceship extends Floater  
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

    public Spaceship()
    {
      corners = 4;
      cornerx = new int[corners];
      cornery = new int[corners];
      cornerx[0] = -8;
      cornery[0] = -8;
      cornerx[1] = 16;
      cornery[1] = 0;
      cornerx[2] = -8;
      cornery[2] = 8;
      cornerx[3] = -2;
      cornery[3] = 0;
      Colour = 237;
      Colour2= 26;
      Colour3=55;
      ceny = 400;
      cenx = 400;
      myDirectionY = 0;
      myDirectionY = 0;
      myPointDirection = 0;
    }
}
