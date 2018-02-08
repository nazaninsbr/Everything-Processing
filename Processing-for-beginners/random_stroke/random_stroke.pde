float []x; 
float []y;
float []xDelta;
float []yDelta;
int number=50;
void setup(){
   size(500, 600);
   frameRate(300);
   x = new float[number];
   y = new float[number];
   xDelta = new float[number];
   yDelta = new float[number];
   for(int i=0; i<50; i++){
       x[i] = random(0, width-10);
       y[i] = random(0, height -10);
       xDelta[i] = random(-2, 3);
       yDelta[i] = random(-2, 3);
   }
}


void draw(){
  background(0);
  fill(random(0, 255), random(0, 255) , 100);
  strokeWeight(random(0, 20));
  
  for(int i=0; i<number; i++){
    ellipse(x[i], y[i], 20, 20);
    
    x[i] = x[i] + xDelta[i];
    y[i] = y[i] + yDelta[i];
    
    if((x[i]<10) || (x[i] > width -10)){
      xDelta[i] = -xDelta[i];
    }
    if((y[i]<10) || (y[i] > height -10)){
      yDelta[i] = -yDelta[i];
    }
  }
}