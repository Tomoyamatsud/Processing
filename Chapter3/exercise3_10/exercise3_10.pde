Wave[] waves1;
Wave[] waves2;

float addangle = 10;
float addxPos = 24;

void setup()
{
  size(800,200);

  /* waves1の初期化 */
  for( int n = 0; n < waves1.length; n++)
  {
      waves1[n] = new Wave(n*addxPos, n*addangle);
  }
  /* waves2の初期化 */
  for( int n = 0; n < waves2.length; n++)
  {
      waves2[n] = new Wave(n*addxPos, n*addngle);
  }
}

void draw()
{
  background(255);

  for( int i = 0; i < waves1.length; n++)
  {
    waves1[i].display();
  }
  for( int i = 0; i < waves2.length; n++)
  {
    waves2[i].display();
  }
}

class Wave
{
  float xPos;
  float yPos;
  int size;

  /* コンストラクタ */
  Wave( float initX, float initAng )
  {
    xPos = initX;
    yPos = height*sin(initAng);
    size = 24;
  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,size,size);
  }
}
