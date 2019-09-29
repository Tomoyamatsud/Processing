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

  public void update( int mode )
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
      angle += 3;
      if( angle > 360 )
      {
        angle = 0;
      }
    }

    else if( mode == 2 ) // Left mode
    {
      angle -= 3;
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
    image(img, 0, 0);
    popMatrix();
  }
}

public void setup()
{
  
  background(0);
  imageMode(CENTER);

  Yamato = new Spaceship();
}

public void draw()
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
