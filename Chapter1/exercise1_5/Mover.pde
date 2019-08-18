class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float maxSpeed;
  int moverSize;
  float restitution;   //　反発係数
 
  Mover()
  {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    maxSpeed = 100;
    moverSize = 50;
    restitution = 0.94;
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
    if( location.x > width )
    {
      location.x = width;
      velocity.x = velocity.x * (-1) * restitution;
    }
    else if( location.x < 0 )
    {
      location.x = width;
      velocity.x = velocity.x * (-1) * restitution;
    }
    
    if( location.y > height )
    {
      location.y = height;
      velocity.y = velocity.y * (-1) * restitution;
    }
    else if( location.y < 0 )
    {
      location.y = 0;
      velocity.y = velocity.y * (-1) * restitution;
    }
  }
}