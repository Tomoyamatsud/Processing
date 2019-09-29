/* exercise 3.5 別解 */
/* デカルト座標で考える場合 */

Spaceship Asteroid;

class Spaceship{
  PVector location;
  PVector velocity;
  float acceleration;
  float mass;

  float angle;

  Spaceship(){
    location = new PVector( 0, 0 );
    velocity = new PVector( 0, 0 );
    acceleration = 1;
    angle = 0;
    mass = 30;
  }

  void update( int mode )
  {
    if( mode == 0 ) // Forward Mode
    {
      location.x = location.x + sin(radians(angle));
      location.y = location.y + cos(radians(angle));
      println("angle:"+angle);
      println(location.x);
    }
    else if( mode == -1 )
    {
      location.x = location.x - sin(radians(angle));
      location.y = location.y - cos(radians(angle));
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

    pushMatrix();
    translate( location.x, location.y );
    rotate(radians(angle));
    rect(0,0, mass, mass);
    popMatrix();
  }
}

void setup()
{
  size(640,360);
  background(0);
  rectMode(CENTER);

  Asteroid = new Spaceship();
}

void draw()
{
  background(0);
  translate( width/2, height/2 );

  if( keyPressed )
  {
    if( keyCode == UP )
    {
        Asteroid.update( 0 );
    }
    else if( keyCode == DOWN )
    {
        Asteroid.update( -1 );
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
