float x = 50;

void setup(){
  size(600, 400);
}

void draw(){
  background(0);
   ellipse(x, 50, 40, 40);
   x = x+ 0.5;
}