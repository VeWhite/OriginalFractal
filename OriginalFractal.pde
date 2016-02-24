public void setup()
{
	background(0);
	size(400,400);
    

}
public void draw()
{
	fractal(220, 220, 220);
	fill(45);
	
	stroke(34, 65, 100);
	fractal(200, 200, 200);
	

}
public void fractal(double x, double y, int len)
{
	if (len > 50)
	{
   	fractal(x, y - len/2, len/2);
    fractal(x + len * sqrt(2)/3, y - len/4, len/2);
    fractal(x + len * sqrt(2)/3, y + len/4, len/2);
    fractal(x, y + len/2, len/2);
    fractal(x - len * sqrt(2)/3, y + len/4, len/2);
    fractal(x - len * sqrt(2)/3, y - len/4, len/2);
	}
	else
	{
		rect((float)x, (float)y, len/2, len);
		triangle((float)x, (float)y,(float)x, (float)y,(float)x, (float)y );
	}
}