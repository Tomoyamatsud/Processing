class Mover
{
  PVector location;
  PVector velocity;
  int moverSize;
 
  Mover()
  {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-5,5), random(-5,5));
    moverSize = int(random(30)+1);
  }
 
  void update()
  {
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