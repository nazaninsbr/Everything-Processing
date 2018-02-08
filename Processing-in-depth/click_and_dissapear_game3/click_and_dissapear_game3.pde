float []x;
float []y;
float []xDelta;
float []yDelta;
int number=50;
int points = 0;
void setup(){
   size(500, 500);
   frameRate(60);
   x = new float[number];
   y = new float[number]; 
   xDelta = new float[number];
   yDelta = new float[number];
   for(int i=0; i<number; i++){
    x[i] = random(0, width-10); 
    y[i] = random(0, height-10);
    xDelta[i] = random(-1, 1); 
    yDelta[i] = random(-1, 1);
  }
}


void draw(){
  background(0);
  fill(255);
  for(int i=0; i<number; i++){
    ellipse(x[i], y[i], 20, 20);
    x[i] = x[i] + xDelta[i];
    y[i] = y[i] + yDelta[i];
    
    if((x[i]<10) || (x[i]> width-10)){
      xDelta[i] = -xDelta[i];
    }
    if((y[i]<10) || (y[i]> height-10)){
      yDelta[i] = -yDelta[i];
    }
  }
  textSize(32);
  fill(0, 50, 255);
  text("Points: "+ points, 30, 30);
}
void mousePressed(){
  for(int i=0; i<number; i++){
    float dist = sqrt((x[i]-mouseX)*(x[i]-mouseX) + (y[i]-mouseY)*(y[i]-mouseY));
    if (dist<=10){
      x[i] = -100;
      y[i] = -100;
      int speedBonus = abs(int(xDelta[i] + yDelta[i]));
      points = points +10 + speedBonus;
      break;
    }
  }
}