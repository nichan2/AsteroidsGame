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
    private int AY, AX;
    public Asteroids()
    {   
        int nick = (int)(Math.random()*100);
        if(nick < 25) {AX = (int)(Math.random() * 800);}
        else if(nick < 50) {AX = (int)(Math.random() * 800); AY = 800;}
        else if(nick < 75) {AX = 0; AY = (int)(Math.random() * 800);}
        else {AX = 800; AY = (int)(Math.random() * 800);}
      
      corners = 12;
      xCorners = new int[corners];
      yCorners = new int[corners];
      int[] xS = {2,5,10,8,10,3,-6,-7,-6,-9,-11,-8};
        int[] yS = {16,7,7,3,-10,-13,-10,-11,-3,0,4,18};
        xCorners = xS;
        yCorners = yS;
      
        myColor = 7;
        myColor2=112;
        myColor3=60;
      myCenterY = 0 + AY;
      myCenterX = 0 + AX;
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
Spaceship one = new Spaceship();
ArrayList<Asteroids> numAsteroids = new ArrayList<Asteroids>(); 
Stars[] starsNum = new Stars[100];
ArrayList<Bullet> numBullets = new ArrayList<Bullet>();
int Assdes = 0;
int hp = 100;

public void setup() 
{
  size(800,800);
  background(0);
  //one = new Spaceship();
  for(int i = 0;i < starsNum.length; i++) {starsNum[i] = new Stars();}
  for(int i = 0; i < 20; i++) {numAsteroids.add(new Asteroids());}

}
public void draw() 
{
  background(0);
  for(int i = 0; i < starsNum.length; i++) {starsNum[i].show();}
  for(int i = 0; i < numAsteroids.size(); i++) {numAsteroids.get(i).show(); numAsteroids.get(i).move();}
   one.show();
   one.move();
  for(int i = 0; i < numAsteroids.size(); i++)
  {
    if(dist(numAsteroids.get(i).getX(),numAsteroids.get(i).getY(),one.getX(),one.getY()) < 25)
    {
      numAsteroids.remove(i);
      hp=hp-10;
    }
    for(int k = 0;k < numBullets.size(); k++)
  {
    numBullets.get(k).show();
    numBullets.get(k).move();
    if(dist(numAsteroids.get(i).getX(),numAsteroids.get(i).getY(),numBullets.get(k).getX(),numBullets.get(k).getY()) < 35)
    {
      numAsteroids.remove(i);
      numBullets.remove(k);
      numAsteroids.add(new Asteroids());
      Assdes++;
    }
  }
    
  }
  
 
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

  if(key == 'a') //turn left
  {
    one.turn(-15);
  }
  if(key == 'd') //turn right
  {
    one.turn(15);
  }
  if(key == ' ')
  {
    numBullets.add(new Bullet(one));
  }
}
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
    myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY();
    myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
  }
  public void show()
  {
  stroke(99,255,224);
 
    fill(99,255,224);
    ellipse((float)myCenterX,(float)myCenterY,(float)20,(float)20);
  }
  public void move()
  {
    myCenterX += myDirectionX;    
      myCenterY += myDirectionY;
  }
}
abstract class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor; 
  protected int myColor2;
  protected int myColor3;
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor,myColor2,myColor3);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}   
class Spaceship extends Floater  
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
      myColor = 237;
      myColor2= 26;
      myColor3=55;
      myCenterY = 400;
      myCenterX = 400;
      myDirectionY = 0;
      myDirectionY = 0;
      myPointDirection = 0;
    }
}
class Stars //note that this class does NOT extend Floater
{    
  protected int x,y;
  public Stars()
  {
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
  }
  public void show()
  {
    fill(255,255,255);
    ellipse(x,y,(int)(Math.random()*8),(int)(Math.random()*8));
    textSize(40);
    text("HP: "+hp,10,40);
    text("Points: "+Assdes,10,90);
    if(hp <= 0) {textSize(100);fill(255,0,0);text("Try Again",150,400);}

  }
}
