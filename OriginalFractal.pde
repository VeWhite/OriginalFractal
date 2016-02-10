public void setup()
{
	background(0);
	size(300,300);
}
public void draw()
{
	fractal(8, 100, 220);
	fractal(8, 350, 220);

}
public void fractal(int x, int y, int len)
{
	if (len > 50)
	{
		fractal(x,y,len/2);
		fractal(x+len/2, y, len/2);
   		fractal(x+len/4, y-len/2, len/2);
	}
	else
	{
		ellipse(x+len/2, y-len, x, y);
	}
}