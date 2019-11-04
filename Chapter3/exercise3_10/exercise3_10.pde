Wave waves1;
Wave waves2;

void setup()
{
  size(800,200);

  /* 配列ではなく、先頭の要素が決まれば、数珠繋ぎで表示する玉に変更する */

  /* waves1の初期化 */
  waves1 = new Wave(random(width), random(height), 0, 10);
  /* waves2の初期化 */
  waves2 = new Wave(random(width), random(height), 0, 20);
}

void draw()
{
  background(255);
  
  waves1.display();
  waves2.display();
}

class Wave
{
  float xPos;
  float yPos;
  float angle;
  float amplitude;
  int waves_num;
  int size;

  /* コンストラクタ */
  Wave( float initX, float initY, float initAng, int num )
  {
    xPos = initX;
    yPos = initY;
    angle = initAng;
    waves_num = num;
    amplitude = height;
    size = 24;
  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    noFill();

    for( int n = 0; n < waves_num; n++ )
    {
      ellipse(xPos+n*size,amplitude*sin(angle),24,24);
      angle += 0.1;
    }
  }
}
