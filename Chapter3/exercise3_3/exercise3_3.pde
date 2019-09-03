Mover car;
PVector forward = new PVector(0,-0.1);
PVector back = new PVector(0, 0.1);
PVector rightturn = new PVector(0.1,0);
PVector leftturn = new PVector(-0.1,0);

void setup()
{
  size(640, 480);
  stroke(0);
  fill(0);

  car = new Mover(10, width/2, height/2);
}

void draw()
{
  background(255);

  if( keyPressed == true )
  {
    if (key == CODED) {			// コード化されているキーが押された
  		if (keyCode == UP) {		// キーコードを判定
  			 car.applyForce(forward);
  		}
      if (keyCode == DOWN) {
  			 car.applyForce(back);
  		}
      if (keyCode == RIGHT){
         car.applyForce(rightturn);
      }
      if (keyCode == LEFT){
         car.applyForce(leftturn);
      }
  	}
  }

  car.update();
  car.display();
}
