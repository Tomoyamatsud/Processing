Spaceship Yamato;

class Spaceship{
  PVector location;
  PVector velocity;
  PImage img;
  float r;
  float angle;

  Spaceship(){
    location = new PVector( 0, 0 );
    velocity = new PVector( 0, 0 );
    img = loadImage("spaceship.png");
    r = 0;
    angle = 0;
  }

  void update( int mode )
  {
    if( mode == 0 ) // Forward Mode
    {
      location.x = location.x + sin(radians(angle));
      location.y = location.y - cos(radians(angle));
    }
    else if( mode == -1 )
    {
      location.x = location.x - sin(radians(angle));
      location.y = location.y + cos(radians(angle));
    }
    else if( mode == 1 ) // Right Mode
    {
      angle += 2;
      if( angle > 360 )
      {
        angle = 0;
      }
    }

    else if( mode == 2 ) // Left mode
    {
      angle -= 2;
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
    image(img, 0, 0);
    popMatrix();
  }
}

void setup()
{
  size(640,360);
  background(0);
  imageMode(CENTER);

  Yamato = new Spaceship();
}

void draw()
{
  background(0);
  translate( width/2, height/2 );

  if( keyPressed )
  {
    if( keyCode == UP )
    {
        Yamato.update( 0 );
    }
    else if( keyCode == DOWN )
    {
        Yamato.update( -1 );
    }
    else if( keyCode == RIGHT )
    {
        Yamato.update( 1 );
    }
    else if( keyCode == LEFT )
    {
        Yamato.update( 2 );
    }
  }

  Yamato.display();
}
