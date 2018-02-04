// http://shikaimonjo.hateblo.jp/entry/20120904
int centerX, centerY;

void setup()
{
  size(800,480);
  background(255);
  stroke(0);
  
  centerX = width/2;
  centerY = height/2;
}

void draw()
{
  drawGrid();
  for(int x = -200; x < 200; x++)
  {
    point( quadraticfunction(x).x,quadraticfunction(x).y );
  }
}

void drawGrid()
{
  for( int x = 0; x < width; x+=3 )
  {
    point( x, centerY );
  }
  for( int y = 0; y < height; y+=3 )
  {
    point( centerX, y );
  }
}

PVector quadraticfunction( float x )
{
  PVector XY = new PVector(x,0);
  XY.x = x+centerX;
  XY.y = (-1)*x*x/100+centerY;
  
  return XY;
}