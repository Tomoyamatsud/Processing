Wave waves1;
Wave waves2;

float startangle = 0;

void setup()
{
  size(800,200);

  float initX_for_waves1 = map(random(width), 0, width, 30, width-50);
  float initX_for_waves2 = map(random(width), 0, width, 30, width-50);

  /* waves1の初期化 */
  waves1 = new Wave(initX_for_waves1, 10);
  /* waves2の初期化 */
  waves2 = new Wave(initX_for_waves2, 20);
}

void draw()
{
  background(255);

  float initangle = startangle;

  waves1.display(initangle, 0.25, height);
  waves2.display(initangle, 0.74, height/4);
}

class Wave
{
  float xPos;
  float yPos;
  int size;
  int length;

  /* コンストラクタ */
  Wave( float initX, int setlength )
  {
    xPos = initX;
    yPos = height/2;
    size = 24;
    length = setlength;
  }

  // インスタンスを画面に表示する
  void display(float angle, float angleVel, float amplitude )
  {
    stroke(0);
    noFill();

    for( int n=0; n < length; n++)
    {
      float y = map(sin(angle), -1, 1, 0, amplitude);
      ellipse(xPos+size*n,y,size,size);
      angle += angleVel;
    }
  }
}
