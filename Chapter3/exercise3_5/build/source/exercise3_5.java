import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class exercise3_5 extends PApplet {

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
    acceleration = 0.1f;
    angle = 0;
    mass = 30;
  }

  public void update( int mode )
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

  public void display()
  {
    stroke(255);
    fill(0);

    rotate(angle);
    rect(location.x,location.y,mass*2, mass*2);
  }
}

public void setup()
{
  
  background(0);

  Asteroid = new Spaceship();
}

public void draw()
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
  public void settings() {  size(640,360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_5" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
