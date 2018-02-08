void setup(){
   background(0);
   size(600, 600);
   PVector p1 = new PVector(50, 100);
   ellipse(p1.x, p1.y, 20, 20);
   stroke(255);
   line(0, 0, p1.x, p1.y);
}