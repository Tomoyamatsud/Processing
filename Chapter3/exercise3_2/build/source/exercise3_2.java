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

public class exercise3_2 extends PApplet {

Mover mover;
PVector gravity = new PVector( 0.0f, 0.07f);

public void setup()
{
  
  stroke(0);
  fill(0);

  mover = new Mover(2, 0, height/2);
}

public void draw()
{
  background(255);

  mover.applyForce(gravity);
  mover.update();
  mover.display();
}
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
    velocity = new PVector( 4,-2.5f );
    acceleration = new PVector( 0.01f,0.002f );

    angle = 0;
    aVelocity = 0;
    aAcceleration = acceleration.x;

    mass = m;
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

  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  public void display()
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
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
