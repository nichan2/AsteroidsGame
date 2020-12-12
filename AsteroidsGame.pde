Spaceship bob = new Spaceship();
Stars[] nightSky = new Stars[100];
public void setup() 
{
  size(500,500);
  background(0);
  //creates stars 
  for(int i = 0;i < nightSky.length; i++){
    nightSky[i] = new Stars();
  }
}
public void draw() {
  background(0);
  //draws stars
  for(int i = 0; i < nightSky.length; i++){
  nightSky[i].show();
  }
  //draws spaceship
  bob.show();
  bob.move();
}

public void keyPressed(){
  if(key == 'h') //hyperspace
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.hyperspaceX(Math.random()*500);
    bob.hyperspaceY(Math.random()*500);
    bob.direction(Math.random()*500);
  }
  if(key == 'w') //accelerate
  {
    bob.accelerate(0.5);
  }
  if(key == 'a') //turn left
  {
    bob.turn(-15);
  }
  if(key == 'd') //turn right
  {
    bob.turn(15);
  }
}
