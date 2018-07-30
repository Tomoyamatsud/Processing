/************************/
/* movers
/* Mover( float m, float xPos, float yPos)
/* m:質量
/* xPos:
/* yPos:
/************************/
Mover[] movers =  new Mover[2];

float G = 1.0; // 万有引力係数

void setup()
{
  size(800,480);
  background(255);
  
  for( int i = 0; i < movers.length; i++ )
  {
    movers[i] = new Mover(random(0.1,4), width/2+random(-250,250), height/2+random(-250,250) );
  }
}

void draw()
{
  background(255);
  
  for(int i = 0; i<movers.length; i++)
  {

    movers[i].update();
    movers[i].display();
  }
}