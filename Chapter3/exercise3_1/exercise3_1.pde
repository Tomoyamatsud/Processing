void setup()
{
  size(640, 480);
  background(255);
  stroke(0);
  fill(0);

  translate(width/2, height/2);
  rotate(-PI/4);

  line(-100, 0, 100, 0);
  ellipse(-100, 0, 30, 30);
  ellipse(100, 0, 30, 30);
}