class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  float angle;
  float aVelocity;
  float aAcceleration;

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
  
}