float []x = {100, 105, 140}; 
float []y = {100, 99, 100};
float []xDelta;
float []yDelta;
int number=50;
void setup(){
   size(500, 500);
   frameRate(60);
}


void draw(){
  background(0);
  for(int i=0; i<3; i++){
    ellipse(x[i], y[i], 20, 20);
  }
}
void mousePressed(){
  for(int i=0; i<3; i++){
    float dist = sqrt((x[i]-mouseX)*(x[i]-mouseX) + (y[i]-mouseY)*(y[i]-mouseY));
    if (dist<10){
      x[i] = -100;
      y[i] = -100;
    }
  }
}