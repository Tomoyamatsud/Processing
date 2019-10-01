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

public class exercise3_6 extends PApplet {

public void setup()
{
  
}

public void draw()
{
  background(0);
  float period = 120;
  float amplitudeX = 100;
  float amplitudeY = 30;
  float mapY = map(sin(TWO_PI * frameCount / period), -1, 1, 0, 3);
  float y = amplitudeY * mapY;
  stroke(255);
  fill(175);
  translate(width/2, height/2);
  line(0,-(height/2),0,y);
  ellipse(0,y,20,20);
}
  public void settings() {  size(640,360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
