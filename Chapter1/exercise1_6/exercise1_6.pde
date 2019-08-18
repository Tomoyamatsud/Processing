Mover mover;

void setup()
{
  size(640,360);
  mover = new Mover();
}

void draw()
{
  background(255);

  mover.update();
  mover.checkEdges();
  mover.display();
}

//void keyPressed()
//{
//  if( keyCode == UP )
//  {
//    mover.acceleration.y += 0.1;
//  }
//  else if( keyCode == DOWN )
//  {
//    mover.acceleration.y -= 0.1;
//  }
//}