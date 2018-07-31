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
   
 }
}