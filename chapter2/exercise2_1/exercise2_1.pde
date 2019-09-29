Mover[] movers =  new Mover[5];

PVector wind = new PVector( 0.0, 0.0 );
PVector hellium = new PVector( 0.0, -0.1 );
float noise_t;

void setup()
{
  size(640,360);
  background(255);
  noise_t = 0;
  
  for( int i = 0; i < movers.length; i++ )
  {
    movers[i] = new Mover();
  }
}

void draw()
{
  background(255);
  
  float perlin = map( noise(noise_t), 0, 1, -0.05, 0.05);
  wind = new PVector( perlin, 0);

  for(int i = 0; i<movers.length; i++)
  {
    movers[i].applyForce(wind);
    movers[i].applyForce(hellium);
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
  
  noise_t++;
}