abstract class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int Colour; 
  protected int Colour2;
  protected int Colour3;
  protected double xcenter, ycenter; //holds center coordinates   
  protected double xdirection, ydirection; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    
  abstract public void setx(int x);  
  abstract public int getX();   
  abstract public void setY(int y);   
  abstract public int getY();   
  abstract public void setDirectionX(double x);   
  abstract public double getDirectionX();   
  abstract public void setDirectionY(double y);   
  abstract public double getDirectionY();   
  abstract public void setPointDirection(int degrees);   
  abstract public double getPointDirection(); 

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    xdirection += ((dAmount) * Math.cos(dRadians));    
    ydirection += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by xdirection and ydirection       
    xcenter += xdirection;    
    ycenter += ydirection;     

    //wrap around screen    
    if(xcenter >width)
    {     
      xcenter = 0;    
    }    
    else if (xcenter<0)
    {     
      xcenter = width;    
    }    
    if(ycenter >height)
    {    
      ycenter = 0;    
    } 
    
    else if (ycenter < 0)
    {     
      ycenter = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(Colour,Colour2,Colour3);   
    stroke(Colour);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)xcenter, (float)ycenter);

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
    translate(-1*(float)xcenter, -1*(float)ycenter);
  }   
} 
