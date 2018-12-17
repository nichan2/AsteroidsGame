
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
    text("Health: "+health,10,40);
    text("Asteroids Destroyed: "+numAsteroidsDestroyed,10,90);
    if(health <= 0) {textSize(100);fill(255,0,0);text("YOU LOSE",150,400);}
	}

}