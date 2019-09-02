Mover mover;
PVector gravity = new PVector( 0.0, 0.07);

void setup()
{
  size(640, 480);
  stroke(0);
  fill(0);

  mover = new Mover(2, 0, height/2);
}

void draw()
{
  background(255);

  mover.applyForce(gravity);
  mover.update();
  mover.display();
}
