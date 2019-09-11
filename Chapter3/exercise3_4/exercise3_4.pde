float r = 0;
float theta = 0;

void setup()
{
  size(640,360);
  background(255);
}

void draw()
{
  background(255);
  noStroke();
  fill(0);

  r = 0;
  
  while( r < width )
  {
    float x = r * cos(theta);
    float y = r * sin(theta);

    ellipse(x+width/2, y+height/2, 16, 16);
    theta += 0.01;
    r+=0.05;
  }
}
