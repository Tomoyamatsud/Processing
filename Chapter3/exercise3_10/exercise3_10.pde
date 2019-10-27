class Wave
{
  float startAngle;
  float angleVel;
  float xPos;
  float yPos;

  Wave( float setAngle, float setVel, float initX float initY )
  {
    startAngle = setAngle;
    angleVel = setVel;
    xPos = initX;
    yPos = initY;
  }

  // 速度と位置の更新
  void update()
  {

  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    noFill();
    ellipse(xPos,yPos,24,24);
  }

  // 場の力を物体の加速度に加える
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
}

Wave[] waves = new Wave[10];

void setup()
{
  size(800,200);

  for( int i = 0; i < waves.length; i++)
  {
    waves[i] = new Wave(random(0.1,4), random(width), random(height) );
  }
}

void draw()
{

}
