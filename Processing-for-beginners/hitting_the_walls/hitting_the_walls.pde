float x = 150; 
float xDelta = 1;
float y = 70;
float yDelta = 1;
void setup(){
   size(600, 600);
   frameRate(200);
}

void draw(){
   background(0);
   
   fill(170, 100, 120);
   stroke(170, 20, 0);
  
   ellipse(x, y, 20, 20);
   
   x = x + xDelta;
   y = y + yDelta;
   
   if((x > width-10) || (x<10)){
     xDelta = -xDelta;
   }
   if((y<10) || (y> height -10)){
     yDelta = -yDelta;
   }
}