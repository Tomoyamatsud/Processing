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

Wave[] waves1;
Wave[] waves2;

float addangle = 10;
float addxPos = 24;

public void setup()
{
  

  /* waves1\u306e\u521d\u671f\u5316 */
  for( int n = 0; n < waves1.length; n++)
  {
      waves1[n] = new Wave(n*addxPos, n*addangle);
  }
  /* waves2\u306e\u521d\u671f\u5316 */
  for( int n = 0; n < waves2.length; n++)
  {
      waves2[n] = new Wave(n*addxPos, n*addngle);
  }
}

public void draw()
{
  background(255);

  for( int i = 0; i < waves1.length; n++)
  {
    waves1[i].display();
  }
  for( int i = 0; i < waves2.length; n++)
  {
    waves2[i].display();
  }
}

class Wave
{
  float xPos;
  float yPos;
  int size;

  /* \u30b3\u30f3\u30b9\u30c8\u30e9\u30af\u30bf */
  Wave( float initX, float initAng )
  {
    xPos = initX;
    yPos = height*sin(initAng);
    size = 24;
  }

  // \u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u753b\u9762\u306b\u8868\u793a\u3059\u308b
  public void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,size,size);
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
