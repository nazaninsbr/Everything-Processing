star[] stars = new star[100];

void setup(){
   size(500, 500);
   for(int i=0; i<stars.length ; i++){
     stars[i] = new star();
   }
}

void draw(){
   background(0);
   for(int i=0; i<stars.length ; i++){
      stars[i].update();
      stars[i].show();
   }
}