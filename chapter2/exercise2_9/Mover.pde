class Mover
{
  PVector location; // 位置
  PVector velocity; // 速さ
  PVector acceleration; // 加速度
  float mass; //　質量
  
  Mover( float m, float xPos, float yPos)
  {
    location = new PVector( xPos, yPos ); // インスタンスの初期位置は引数で与えられた位置とする
    velocity = new PVector( 0,0 );  // 初期速度0
    acceleration = new PVector( 0,0 ); // 初期加速度0
    mass = m; // インスタンスの質量は引数で与えられた値とする
  }

  // 速度と位置の更新
  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  // ウィンドウ内外の境界を確認する
  void checkEdges()
  {
    if(location.x > width)
    {
      location.x = width;
      velocity.x *= (-1);
    } else if ( location.x < 0 ) 
    {
      location.x = 0;
      velocity.x *= (-1);
    }
  
    if(location.y > height)
    {
      location.y = height;
      velocity.y *= (-1);
      
    } else if ( location.y < 0 )
    {
      location.y = 0;
      velocity.y *= (-0.8);
    }
  }

  // インスタンスを画面に表示する
  void display()
  {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16*mass, 16*mass );
  }

  // 場の力を物体の加速度に加える
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
}