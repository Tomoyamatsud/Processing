/************************/
/* movers
/* Mover( float m, float xPos, float yPos)
/* m:質量
/* xPos:
/* yPos:
/************************/
Mover[] movers = new Mover[10];
Attractor a;
float G = 1.0; // 万有引力係数
PVector f;

void setup()
{
  size(800,480);
  background(255);
  
  a = new Attractor();
  
  for( int i = 0; i < movers.length; i++)
  {
    movers[i] = new Mover(random(0.1,4), random(width), random(height) );
  }

}

void draw()
{
  background(255);
  
  for( int i = 0; i < movers.length; i++)
  {
    f = a.attract(movers[i]);

    movers[i].applyForce(f);
    movers[i].update();
    movers[i].display();
  }
  a.display();
}