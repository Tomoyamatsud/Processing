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

Wave waves1;
Wave waves2;

float startangle = 0;

public void setup()
{
  

  float initX_for_waves1 = map(random(width), 0, width, 30, width-50);
  float initX_for_waves2 = map(random(width), 0, width, 30, width-50);

  /* waves1\u306e\u521d\u671f\u5316 */
  waves1 = new Wave(initX_for_waves1, 10);
  /* waves2\u306e\u521d\u671f\u5316 */
  waves2 = new Wave(initX_for_waves2, 20);
}

public void draw()
{
  background(255);

  float initangle = startangle;

  waves1.display(initangle, 0.25f, height);
  waves2.display(initangle, 0.74f, height/4);
}

class Wave
{
  float xPos;
  float yPos;
  int size;
  int length;

  /* \u30b3\u30f3\u30b9\u30c8\u30e9\u30af\u30bf */
  Wave( float initX, int setlength )
  {
    xPos = initX;
    yPos = height/2;
    size = 24;
    length = setlength;
  }

  // \u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u753b\u9762\u306b\u8868\u793a\u3059\u308b
  public void display(float angle, float angleVel, float amplitude )
  {
    stroke(0);
    noFill();

    for( int n=0; n < length; n++)
    {
      float y = map(sin(angle), -1, 1, 0, amplitude);
      ellipse(xPos+size*n,y,size,size);
      angle += angleVel;
    }
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
