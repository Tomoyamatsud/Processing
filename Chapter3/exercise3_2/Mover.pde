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
    velocity = new PVector( 4,-2.5 );
    acceleration = new PVector( 0.01,0.002 );

    angle = 0;
    aVelocity = 0;
    aAcceleration = acceleration.x;

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
  }

  void display()
  {
    stroke(0);
    fill(175, 200);
    rectMode(CENTER);
    pushMatrix();

    translate(location.x, location.y);
    rotate(angle);
    rect(0,0,mass*16, mass*16);
    popMatrix();
  }
}
