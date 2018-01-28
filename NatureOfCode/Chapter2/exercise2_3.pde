Mover[] movers =  new Mover[20];

PVector wind = new PVector( 0.01, 0.0 );
PVector gravity = new PVector( 0.0, 0.1 );
float noise_t;

void setup()
{
  size(640,360);
  background(255);
  noise_t = 0;
  
  for( int i = 0; i < movers.length; i++ )
  {
    movers[i] = new Mover(random(0.1,4), 0, 0);
  }
}

void draw()
{
  background(255);
  
  for(int i = 0; i<movers.length; i++)
  {
    PVector tF = transparentForce( movers[i].location);
    movers[i].applyForce(tF);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
  
}

PVector transparentForce(PVector pos)
{
  float xDistance,yDistance;
  PVector tF;
  
  xDistance = (width/2) - abs(pos.x);
  yDistance = abs(pos.y - height);

  tF = new PVector(xDistance,yDistance);
  return(tF);
}