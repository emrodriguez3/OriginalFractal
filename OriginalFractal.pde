int myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
public void setup()
{
  size (500, 500);
  rectMode(CENTER);
}
public void draw()
{
  background(myColor);
  fill(myColor);
  myFractal(250, 250, 500);
}

public void myFractal(int x, int y, int siz)
{
  rect(x, y, siz, siz);
  if (siz > 0)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y-siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
