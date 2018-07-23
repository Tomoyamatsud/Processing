Mover[] movers =  new Mover[20];

PVector wind = new PVector( 0.01, 0.0 );

void setup()
{
  size(640,360);
  background(255);
  
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
    Mover m = movers[i];
    float edgeForceScale = 0.001;

    PVector gravity = new PVector( 0.0, 0.1*m.mass );

    PVector leftForce = new PVector(abs(width - m.location.x) * edgeForceScale, 0);
    PVector rightForce = new PVector(-(m.location.x * edgeForceScale), 0);
    PVector topForce = new PVector(0, abs(height - m.location.y) * edgeForceScale);
    PVector bottomForce = new PVector(0, -(m.location.y * edgeForceScale));

    movers[i].applyForce(leftForce);
    movers[i].applyForce(rightForce);
    movers[i].applyForce(topForce);
    movers[i].applyForce(bottomForce);
    
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
  }
}