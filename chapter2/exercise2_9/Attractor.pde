class Attractor
{
 float mass;
 PVector location;
 
 Attractor()
 {
   location = new PVector(width/2, height/2); // アトラクターを画面の中央に位置させる
   mass = 20;
 }
 
 void display()
 {
   stroke(0);
   fill(150,0,0);
   ellipse(location.x, location.y, mass*5, mass*5);
 }
 
 PVector attract( Mover m )
 {
   PVector force = PVector.sub(location, m.location);
   float distance = force.mag();
   distance = constrain(distance, 5.0, 25.0 );
   force.normalize();
   float strengh = ( G * mass * m.mass ) / (distance * distance);
   force.mult(strengh);
   
   return force;
 }
}