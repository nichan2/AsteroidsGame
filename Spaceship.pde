class Spaceship extends Floater  
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

    public Spaceship()
    {
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      Colour = 199;
      Colour2= 125;
      Colour3=255;
      ycenter = 400;
      xcenter = 400;
      ydirection = 0;
      ydirection = 0;
      myPointDirection = 0;
    }
}
