import processing.opengl.*;

PVector location;
PVector velocity;

void setup()
{
  size(640,360, OPENGL);
  background(255);
  location = new PVector( 100, 100, 100 );
  velocity = new PVector( 1, 3.3, 2.5 );
}

void draw()
{
  background(255);
  translate(320,180,0);
  rotateX(radians(mouseY));
  rotateY(radians(mouseX));    
  box(100,100,100);
//  location = location.add(velocity);
  
  /*
  if( (location.x > width) || (location.x < 0) )
  {
    velocity.x = velocity.x * (-1);
  }
  if( (location.y > height) || (location.y < 0) )
  {
    velocity.y = velocity.y * (-1);
  }
  if( (location.z > height) || (location.z < 0) )
  {
    velocity.z = velocity.z * (-1);
  }
  
  */
//  stroke(0);
  //fill(175);
//  ellipse(location.x, location.y, 16,16 );
}