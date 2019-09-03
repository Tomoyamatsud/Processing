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

public class exercise3_3 extends PApplet {

Mover car;
PVector forward = new PVector(0,-0.1f);
PVector back = new PVector(0, 0.1f);
PVector rightturn = new PVector(0.1f,0);
PVector leftturn = new PVector(-0.1f,0);

public void setup()
{
  
  stroke(0);
  fill(0);

  car = new Mover(10, width/2, height/2);
}

public void draw()
{
  background(255);

  if( keyPressed == true )
  {
    if (key == CODED) {			// \u30b3\u30fc\u30c9\u5316\u3055\u308c\u3066\u3044\u308b\u30ad\u30fc\u304c\u62bc\u3055\u308c\u305f
  		if (keyCode == UP) {		// \u30ad\u30fc\u30b3\u30fc\u30c9\u3092\u5224\u5b9a
  			 car.applyForce(forward);
  		}
      if (keyCode == DOWN) {
  			 car.applyForce(back);
  		}
      if (keyCode == RIGHT){
         car.applyForce(rightturn);
      }
      if (keyCode == LEFT){
         car.applyForce(leftturn);
      }
  	}
  }

  car.update();
  car.display();
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
    velocity = new PVector( 0,0 );
    acceleration = new PVector( 0,0 );

    angle = 0;
    aVelocity = 0;

    mass = m;
  }

  public void update()
  {
    velocity.add(acceleration);
    location.add(velocity);

    aVelocity += aAcceleration;
    angle += aVelocity;

    acceleration.mult(0);
  }

  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
    aAcceleration = atan2(velocity.x, velocity.y);
  }

  public void display()
  {
    stroke(0);
    fill(175, 200);
    rectMode(CENTER);
    pushMatrix();

    translate(location.x, location.y);
    rotate(angle);
    triangle(0,0, 25,0, 13, 0);
    rect(0,0,25, 25);
    popMatrix();
  }
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "exercise3_3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
