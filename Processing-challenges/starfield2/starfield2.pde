star[] stars = new star[900];
float speed;
void setup(){
   size(800, 800);
   for(int i=0; i<stars.length ; i++){
     stars[i] = new star();
   }
}

void draw(){
   background(0);
   translate(width/2, height/2);
   speed = map(mouseX, 0, width, 0, 50);
   for(int i=0; i<stars.length ; i++){
      stars[i].update();
      stars[i].show();
   }
}