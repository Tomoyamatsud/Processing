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

public class exercise3_10 extends PApplet {

Wave[] waves = new Wave[10];

public void setup()
{
  

  for( int i = 0; i < waves.length; i++)
  {
    waves[i] = new Wave(random(width), random(height) );
  }
}

public void draw()
{
  for( int i = 0; i < waves.length; i++ )
  {
    waves[i].display();
  }
}

class Wave
{
  float xPos;
  float yPos;

  Wave( float initX, float initY )
  {
    xPos = initX;
    yPos = initY;
  }

  // \u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u753b\u9762\u306b\u8868\u793a\u3059\u308b
  public void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,24,24);
  }
}
  public void settings() {  size(800,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_10" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
