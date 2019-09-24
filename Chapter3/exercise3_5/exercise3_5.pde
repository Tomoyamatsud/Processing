Spaceship Asteroid;

class Spaceship{
  PVector location;
  PVector velocity;
  float acceleration;
  float mass;

  float angle;

  Spaceship(){
    location = new PVector( width/2, height/2 );
    velocity = new PVector( 0, 0 );
    acceleration = 0.1;
    angle = 0;
    mass = 30;
  }

  void update( int mode )
  {
    if( mode == 0 ) // Forward Mode
    {

    }
    else if( mode == 1 ) // Right Mode
    {
      angle += 1;
      if( angle > 360 )
      {
        angle = 0;
      }
    }

    else if( mode == 2 ) // Left mode
    {
      angle -= 1;
      if( angle < -360 )
      {
        angle = 0;
      }
    }
  }

  void display()
  {
    stroke(255);
    fill(0);

    rotate(angle);
    rect(location.x,location.y,mass*2, mass*2);
  }
}

void setup()
{
  size(640,360);
  background(0);

  Asteroid = new Spaceship();
}

void draw()
{
  background(0);

  if( keyPressed )
  {
    if( keyCode == 'Z' )
    {
        Asteroid.update( 0 );
    }
    else if( keyCode == RIGHT )
    {
        Asteroid.update( 1 );
    }
    else if( keyCode == LEFT )
    {
        Asteroid.update( 2 );
    }
  }

  Asteroid.display();
}
