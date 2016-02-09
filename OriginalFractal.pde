public void setup()
{
	size(600,600);
}
public void draw()
{
	background(0);
	noFill();
	Fractal(300,300,200);
}
public void Fractal(int x, int y, int s)
{
	stroke(0,0,255);
	ellipse(x+s,y+s,s,s);
	stroke(255,0,0);
	ellipse(x-s,y-s,s,s);
	if(s>20)
	{
		Fractal(x-s/2,y-s/2,s/2);
		Fractal(x-s/2,y+s/2,s/2);
		Fractal(x+s/2,y-s/2,s/2);
		Fractal(x+s/2,y+s/2,s/2);
	}
}