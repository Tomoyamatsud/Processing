class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass; //　質量
  
  Mover( float m, float xPos, float yPos)
  {
    location = new PVector( xPos, yPos );
    velocity = new PVector( 0,0 );
    acceleration = new PVector( 0,0 );
    mass = m;
  }

  void update()
  {
    velocity.add(acceleration);
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
      velocity.y *= (-0.8);
    }
  }

  void display()
  {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16*mass, 16*mass );
  }

  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
}