
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
	}

}
