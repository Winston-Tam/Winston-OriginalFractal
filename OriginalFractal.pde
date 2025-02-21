public void setup()
{
  size(600,600);
}

public void draw()
{
  background(255);
  noStroke();
  myFractal(200, 200, 200);
}

public void myFractal(float x, float y, float d)
{
  ellipse(x, y, d, d);
  if (d > 20)
  {
    fill((int)(Math.random()*180),(int)(Math.random()*180),(int)(Math.random()*180));
    myFractal(x+d/3, y, d/3);
    myFractal(x-d/3, y, d/3);
    myFractal(x, y+d/3, d/3);
    myFractal(x, y-d/3, d/3);
  }

}
