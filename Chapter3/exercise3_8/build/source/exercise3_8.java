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

public class exercise3_8 extends PApplet {

int[] posTableX = { -90, 90, -90, 90, -90, 90, -90, 90 };
int[] posTableY = { -90, -90, -40, -40, 90, 90, 40, 40 };
float[] phase = { 0, 0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 1.75f, 2.0f };

class Oscillator{
  PVector velocity;
  PVector amplitude;
  PVector location;
  float angle; /* \u89d2\u5ea6 = \u89d2\u5ea6 + \u89d2\u901f\u5ea6  */
  float aVelocity; /* \u89d2\u901f\u5ea6 = \u89d2\u901f\u5ea6 + \u89d2\u52a0\u901f\u5ea6 */

  Oscillator( int pos )
  {
    location = new PVector( posTableX[pos], posTableY[pos] );
    velocity = new PVector(0.05f, 0.05f);
    amplitude = new PVector(20,30);
    angle = phase[pos];
  }

  public void oscillate()
  {
    aVelocity += random(0, 0.005f);
    angle += aVelocity;
    if( degrees(angle) > 360.0f )
    {
      angle = 0;
    }
    if( aVelocity > 0.1f )
    {
      aVelocity = 0;
    }
  }

  public void display(int i)
  {
    float x;
    float y;

    if( i % 2 == 0 )
    {
      x = cos(angle)*amplitude.x;
      y = sin(angle)*amplitude.y;
    }
    else
    {
      x = -cos(angle)*amplitude.x;
      y = sin(angle)*amplitude.y;
    }

    pushMatrix();
    translate(width/2,height/2);
    stroke(175);
    fill(175);
    line(0,0,location.x+x,location.y+y);
    ellipse(location.x+x,location.y+y,16,16);
    popMatrix();
  }

}

Oscillator[] oscillators = new Oscillator[8];

public void setup()
{
  
  for(int i = 0; i < oscillators.length; i++)
  {
    oscillators[i] = new Oscillator(i);
  }
}

public void draw()
{
  background(0);

  for(int i = 0; i < oscillators.length; i++)
  {
    oscillators[i].oscillate();
    oscillators[i].display(i);
  }
}
  public void settings() {  size(640,360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_8" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
