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

public void setup()
{
  

  /* \u914d\u5217\u3067\u306f\u306a\u304f\u3001\u5148\u982d\u306e\u8981\u7d20\u304c\u6c7a\u307e\u308c\u3070\u3001\u6570\u73e0\u7e4b\u304e\u3067\u8868\u793a\u3059\u308b\u7389\u306b\u5909\u66f4\u3059\u308b */

  /* waves1\u306e\u521d\u671f\u5316 */
  waves1 = new Wave(random(width), random(height), 0, 10);
  /* waves2\u306e\u521d\u671f\u5316 */
  waves2 = new Wave(random(width), random(height), 0, 20);
}

public void draw()
{
  background(255);
  
  waves1.display();
  waves2.display();
}

class Wave
{
  float xPos;
  float yPos;
  float angle;
  float amplitude;
  int waves_num;
  int size;

  /* \u30b3\u30f3\u30b9\u30c8\u30e9\u30af\u30bf */
  Wave( float initX, float initY, float initAng, int num )
  {
    xPos = initX;
    yPos = initY;
    angle = initAng;
    waves_num = num;
    amplitude = height;
    size = 24;
  }

  // \u30a4\u30f3\u30b9\u30bf\u30f3\u30b9\u3092\u753b\u9762\u306b\u8868\u793a\u3059\u308b
  public void display()
  {
    stroke(0);
    noFill();

    for( int n = 0; n < waves_num; n++ )
    {
      ellipse(xPos+n*size,amplitude*sin(angle),24,24);
      angle += 0.1f;
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
