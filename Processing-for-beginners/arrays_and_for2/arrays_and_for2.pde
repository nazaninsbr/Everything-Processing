float []x = {100, 50, 10, 80, 200, 30}; 
float []y= {100, 150, 110, 70, 300, 500};
float []xDelta = {1, 2, 1.5, 1, 0.5, 0.2};
float []yDelta = {0.5, 1, 2, 1, 1.5, -0.2};
void setup(){
   size(500, 600);
   frameRate(300);
}


void draw(){
  background(0);
  fill(200, 0 , 100);
  
  for(int i=0; i<6; i++){
    ellipse(x[i], y[i], 20, 20);
    x[i] = x[i] +xDelta[i];
    y[i] = y[i] +yDelta[i];
    if((x[i]<10) || (x[i]> width -10)){
      xDelta[i] = -xDelta[i];
    }
    if((y[i]<10) || (y[i]> height -10)){
      yDelta[i] = -yDelta[i];
    }
  }
}