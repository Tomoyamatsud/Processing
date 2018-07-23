class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float mass; //　質量
  
  Mover()
  {
    location = new PVector( random(width), height );
    velocity = new PVector( 0,0 );
    acceleration = new PVector( 0,0 );
    topspeed = 3;
    mass = 10;
  }

  void update()
  {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void checkEdges()
  {
    if(location.x > width)
    {
      location.x = width;
      velocity.x *= (-1);
    } else if ( location.x < 0 ) 
    {
      location.x = 0;
      velocity.x *= (-1);
    }
  
    if(location.y > height)
    {
      location.y = height;
      velocity.y *= (-1);
      
    } else if ( location.y < 0 )
    {
      location.y = 0;
      velocity.y *= (-0.4);
    }
  }

  void display()
  {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16 );
  }

  void applyForce(PVector force)
  {
    acceleration.add(force);
  }
}