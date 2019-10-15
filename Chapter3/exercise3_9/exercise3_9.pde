float startAngle = 0;
float angleVel = 0.1;

void setup()
{
  size(800,200);
}

void draw()
{
  float angle = startAngle;

  for( int x = 0; x <= width; x+= 24)
  {
    float y = map( noise(angle), -1, 1, 0, height);
    stroke(0);
    noFill();
    ellipse(x,y,24,24);
    angle += angleVel;
  }
}
