float []x = {100}; 
float []y = {100};
float []xDelta;
float []yDelta;
int number=50;
void setup(){
   size(500, 500);
   frameRate(60);
}


void draw(){
  background(0);
  ellipse(x[0], y[0], 20, 20);
}
void mousePressed(){
  float dist = sqrt((x[0]-mouseX)*(x[0]-mouseX) + (y[0]-mouseY)*(y[0]-mouseY));
  if (dist<10){
    x[0] = -100;
    y[0] = -100;
  }
}