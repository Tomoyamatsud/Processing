void setup()
{
  size(640, 480);
  stroke(0);
  fill(0);
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  rotate(angle);

  line(-100, 0, 100, 0);
  ellipse(-100, 0, 30, 30);
  ellipse(100, 0, 30, 30);
  
  aVelocity += aAcceleration;
  angle += aVelocity;
}