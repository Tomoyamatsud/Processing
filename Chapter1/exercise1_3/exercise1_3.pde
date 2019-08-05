import processing.opengl.*;

PVector location;
PVector velocity;

void setup()
{
  size(640,360, OPENGL);
  background(255);
  location = new PVector( 100, 100, 100 );
  velocity = new PVector( 5, 8.3, 6.5 );
}

void draw()
{
  background(255);
  
  pushMatrix();
  
  translate(210,175, -200);
  
  rotateX(radians(mouseY));
  rotateY(radians(mouseX));   

  // draw cube
  noFill();
  stroke(0);
  box(300);

  // move ball
  translate(location.x, location.y, location.z);
  location.add(velocity);
  
  
  if( (location.x > 150-20) || (location.x < -150+20) )
  {
    velocity.x = velocity.x * (-1);
  }
  if( (location.y > 150-20) || (location.y < -150+20) )
  {
    velocity.y = velocity.y * (-1);
  }
  if( (location.z > 150-20) || (location.z < -150+20) )
  {
    velocity.z = velocity.z * (-1);
  }
  

  // draw ball
  fill(175);
  noStroke();
  sphere(20);

  popMatrix();
}