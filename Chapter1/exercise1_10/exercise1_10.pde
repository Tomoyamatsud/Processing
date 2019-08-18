Mover[] movers = new Mover[20];

void setup()
{
  size(640,360);
  for(int i=0; i < movers.length ; i++)
  {
    movers[i] = new Mover();
  }
}

void draw()
{
  background(255);

  for(int i=0; i < movers.length ; i++)
  {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
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