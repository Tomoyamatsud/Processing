Wave[] waves1 = new Wave[10];
Wave[] waves2 = new Wave[20];

void setup()
{
  size(800,200);

  /* waves1の初期化 */
  /* 配列ではなく、先頭の要素が決まれば、数珠繋ぎで表示する玉に変更する */
  for( int i = 0; i < waves1.length; i++ )
  {
      waves1[i] = new Wave(random(width), random(height), i);
  }

  /* waves2の初期化 */
  for( int i = 0; i < waves2.length; i++ )
  {
    waves2[i] = new Wave(random(width), random(height), i);
  }
}

void draw()
{
  for( int i = 0; i < waves1.length; i++ )
  {
    waves1[i].display();
  }

  for( int i = 0; i < waves2.length; i++ )
  {
    waves2[i].display();
  }
}

class Wave
{
  float xPos;
  float yPos;
  float angle;

  /* コンストラクタ */
  Wave( float initX, float initY, float initAng )
  {
    xPos = initX;
    yPos = initY;
    angle = initAng;
  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,24,24);
  }
}
