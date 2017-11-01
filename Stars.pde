class Stars //note that this class does NOT extend Floater
{

	public Stars()
	{
		for(int i = 0; i < 20; i++)
		{
			ellipse((int)(Math.random()*800),(int)(Math.random()*800),10,10);
		}
	}

}
