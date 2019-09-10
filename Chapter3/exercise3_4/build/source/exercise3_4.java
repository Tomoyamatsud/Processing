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

public class exercise3_4 extends PApplet {

float r = 75;
float theta = 0;

public void setup()
{
  
  background(255);
}

public void draw()
{
  float x = r * cos(theta);
  float y = r * sin(theta);

  noStroke();
  fill(0);
  ellipse(x+width/2, y+height/2, 16, 16);

  theta += 0.01f;
}
  public void settings() {  size(640,360); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
