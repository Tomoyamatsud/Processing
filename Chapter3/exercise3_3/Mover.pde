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
    aAcceleration = atan2(velocity.x, velocity.y);
  }

  void display()
  {
    stroke(0);
    fill(175, 200);
    rectMode(CENTER);
    pushMatrix();

    translate(location.x, location.y);
    rotate(angle);
    triangle(0,0, 25,0, 13, 0);
    rect(0,0,25, 25);
    popMatrix();
  }
}
