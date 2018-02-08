float []x; 
float []y;
float []xDelta;
float []yDelta;
int number=50;
void setup(){
   size(500, 500);
   background(0);
   frameRate(60);
}


void draw(){
  
}
void mousePressed(){
  println("pressed " + mouseX + " , "+ mouseY);
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(mouseX, mouseY, 20, 20);
}