Mover[] movers =  new Mover[9];

PVector wind = new PVector( 0.1, 0.0 );
float mu = 0.5; // 摩擦係数

void setup()
{
  size(800,480);
  background(255);
  
  for( int i = 0; i < movers.length; i++ )
  {
    movers[i] = new Mover(random(0.1,4), 0, height);
  }
}

void draw()
{
  background(255);
  
  for(int i = 0; i<movers.length; i++)
  {
    PVector friction = movers[i].velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(mu);
    
    if( movers[i].location.x >100 &&  movers[i].location.x < 250 )
    {
      movers[i].applyForce(friction);
    }
    if( movers[i].location.x >500 &&  movers[i].location.x < 600 )
    {
      movers[i].applyForce(friction.mult(-1));
    }
    movers[i].applyForce(wind);
    movers[i].checkEdges();
    movers[i].update();
    movers[i].display();
  }
}