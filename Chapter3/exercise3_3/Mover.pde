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

    angle = 0;
    aVelocity = 0;

    mass = m;
  }

  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);

    aVelocity += aAcceleration;
    angle += aVelocity;

    acceleration.mult(0);
  }

  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
    //angle = atan2(acceleration.x, acceleration.y);
  }

  void display()
  {
    stroke(0);
    fill(175, 200);
    rectMode(CENTER);
    pushMatrix();

    translate(location.x, location.y);
    rotate(angle);
    triangle(0,0, 12.5,25, 25, 0);
    popMatrix();
  }
}
