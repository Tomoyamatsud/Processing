int[] posTableX = { -90, 90, -90, 90, -90, 90, -90, 90 };
int[] posTableY = { -90, -90, -40, -40, 90, 90, 40, 40 };
float[] phase = { 0, 0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0 };

class Oscillator{
  PVector velocity;
  PVector amplitude;
  PVector location;
  float angle; /* 角度 = 角度 + 角速度  */
  float aVelocity; /* 角速度 = 角速度 + 角加速度 */

  Oscillator( int pos )
  {
    location = new PVector( posTableX[pos], posTableY[pos] );
    velocity = new PVector(0.05, 0.05);
    amplitude = new PVector(20,30);
    angle = phase[pos];
  }

  void oscillate()
  {
    aVelocity += random(0, 0.005);
    angle += aVelocity;
    if( degrees(angle) > 360.0 )
    {
      angle = 0;
    }
    if( aVelocity > 0.1 )
    {
      aVelocity = 0;
    }
  }

  void display(int i)
  {
    float x;
    float y;

    if( i % 2 == 0 )
    {
      x = cos(angle)*amplitude.x;
      y = sin(angle)*amplitude.y;
    }
    else
    {
      x = -cos(angle)*amplitude.x;
      y = sin(angle)*amplitude.y;
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
    oscillators[i].oscillate();
    oscillators[i].display(i);
  }
}
