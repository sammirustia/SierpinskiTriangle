public void setup()
{
	background(243, 211, 193);
	size(400,400);
}
public void draw()
{
	sierpinski(10,380,370);
}
public void mouseDragged()//optional
{
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		fill(238, 108, 32);
		triangle(x,y,x+len/2,y-len,x+len,y);
	}
	else
	{
		
		sierpinski(x, y, len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}