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
    location = new PVector( 0, 0 );
    velocity = new PVector( 0, 0 );
    acceleration = 1;
    angle = 0;
    mass = 30;
  }

  public void update( int mode )
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

  public void display()
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

public void setup()
{
  
  background(0);
  rectMode(CENTER);

  Asteroid = new Spaceship();
}

public void draw()
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
