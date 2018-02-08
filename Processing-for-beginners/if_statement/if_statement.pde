float x = 20; 
float xDelta = 1;
void setup(){
   size(600, 600);
   frameRate(200);
}

void draw(){
   background(0);
   
   fill(170, 100, 120);
   stroke(170, 20, 0);
  
   ellipse(x, 100, 20, 20);
   
   x = x + xDelta;
   if(x > 590){
     xDelta = -1;
   }
   if(x<10){
     xDelta = 1;
   }
}