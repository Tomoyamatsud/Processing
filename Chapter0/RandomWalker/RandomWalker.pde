Walker w;

void setup(){
  size(640,480);
  w = new Walker();
  background(255);
}

void draw(){
  w.step();
  w.display();
}

class Walker{
  int x, y;
  
  Walker(){
    x = width/2;
    y = height/2;
  }
  
  void display(){
    stroke(0);
    rect(x,y, 10, 10);
  }
  
  void step(){
    int choice = int(random(10));
    
    if( 0 < choice && choice < 3 ){
      x=x+5;
    } else if( 3 < choice &&  choice < 4 ){
      x=x-5;
    } else if( 4 < choice && choice < 9  ){
      y=y+5;
    } else {
      y=y-5;
    }
  }
}
