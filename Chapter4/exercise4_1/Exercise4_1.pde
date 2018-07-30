Particle p;

void setup()
{
  size(800,600);
  p = new Particle(new PVector(width/2,10));
}

void draw()
{
  background(255);
  p.run();
  if(p.isDead())
  {
    println("Particle dead!");
  }
}