void setup()
{
  size(640,360);
}

void draw()
{
  background(0);
  float period = 120;
  float amplitudeX = 100;
  float amplitudeY = 30;
  float mapY = map(sin(TWO_PI * frameCount / period), -1, 1, 0, 3);
  float y = amplitudeY * mapY;
  stroke(255);
  fill(175);
  translate(width/2, height/2);
  line(0,-(height/2),0,y);
  ellipse(0,y,20,20);
}
