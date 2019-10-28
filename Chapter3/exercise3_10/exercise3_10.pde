Wave[] waves = new Wave[10];

void setup()
{
  size(800,200);

  for( int i = 0; i < waves.length; i++)
  {
    waves[i] = new Wave(random(width), random(height) );
  }
}

void draw()
{
  for( int i = 0; i < waves.length; i++ )
  {
    waves[i].display();
  }
}

class Wave
{
  float xPos;
  float yPos;

  Wave( float initX, float initY )
  {
    xPos = initX;
    yPos = initY;
  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,24,24);
  }
}
