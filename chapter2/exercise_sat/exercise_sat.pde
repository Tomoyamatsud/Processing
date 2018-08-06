/************************/
/* movers
/* Mover( float m, float xPos, float yPos)
/* m:質量
/* xPos:
/* yPos:
/************************/
Mover m;
Attractor a;
float G = 1.0; // 万有引力係数
PVector f;

void setup()
{
  size(800,480);
  background(255);
  
  a = new Attractor();
  
  m = new Mover(random(0.1,4), width/2+random(-250,250), height/2+random(-250,250) );
}

void draw()
{
  background(255);
  
  f = a.attract(m);

  m.applyForce(f);
  m.update();

  a.display();
  m.display();
}