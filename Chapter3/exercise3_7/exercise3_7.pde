int[] posTableX = { -90, 90, -90, 90, -90, 90, -90, 90 };
int[] posTableY = { -90, -90, -40, -40, 90, 90, 40, 40 };

class Oscillator{
  PVector angle;
  PVector velocity;
  PVector amplitude;
  PVector location;

  Oscillator( int pos )
  {
    angle = new PVector(0, 0);
    location = new PVector( posTableX[pos], posTableY[pos] );
    velocity = new PVector(0.05, 0.05);
    amplitude = new PVector(20,30);
  }

  void oscillate( int phase )
  {
    angle.add(velocity);
  }

  void display(int i)
  {
    float x;
    float y;

    if( i % 2 == 0 )
    {
      x = cos(angle.x+(PI/8)*i)*amplitude.x;
      y = sin(angle.y+(PI/8)*i)*amplitude.y;
    }
    else
    {
      x = -cos(angle.x+(PI/8)*i)*amplitude.x;
      y = sin(angle.y+(PI/8)*i)*amplitude.y;
    }

    pushMatrix();
    translate(width/2,height/2);
    stroke(175);
    fill(175);
    line(0,0,location.x+x,location.y+y);
    ellipse(location.x+x,location.y+y,16,16);
    popMatrix();
  }

}

Oscillator[] oscillators = new Oscillator[8];

void setup()
{
  size(640,360);
  for(int i = 0; i < oscillators.length; i++)
  {
    oscillators[i] = new Oscillator(i);
  }
}

void draw()
{
  background(0);

  for(int i = 0; i < oscillators.length; i++)
  {
    oscillators[i].oscillate(i);
    oscillators[i].display(i);
  }
}
