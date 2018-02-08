float x = 20; 
float y = 20;

void setup(){
   size(600, 600);
   frameRate(60);
}

void draw(){
   background(0);
   
   fill(170, 100, 120);
   stroke(170, 20, 0);
   strokeWeight(10);
   
   ellipse(100, 100, 50, 50);
   ellipse(x, y, 20, 20);
   x = x+1;
   y = y+1;
}