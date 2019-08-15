class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float maxSpeed;
  int moverSize;
 
  Mover()
  {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-5,5), random(-5,5));
    acceleration = new PVector(0.01, 0.01);
    maxSpeed = 100;
    moverSize = int(random(30)+1);
  }
  
  void limit()
  {
    if( velocity.mag() > maxSpeed)
    {
      velocity.normalize();
      velocity.mult(maxSpeed);
    }
  }
 
  void update()
  {
    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    location.add(velocity);
  }
  
  void display()
  {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, moverSize, moverSize);
  }
  
  void checkEdges()
  {
    if( location.x > width || location.x < 0 )
    {
      velocity.x = velocity.x * (-1);
    }
    if( location.y > height || location.y < 0 )
    {
      velocity.y = velocity.y * (-1);
    }
  }
}