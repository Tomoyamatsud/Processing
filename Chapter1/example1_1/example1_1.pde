PVector location = new PVector(100,100);
PVector velocity = new PVector(1.0, 3.3);

void setup()
{
  size(640,360);
  background(255);
}

void draw()
{
  background(255);

  location = location.add(velocity);
  
  if( (x>width) || (x<0) )
  {
    velocity.x *= (-1);
  }
  if( (y>height) || (y<0) )
  {
    velocity.y *= (-1);
  }
  
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}