rain[] rains = new rain[100];

void setup(){
   size(500, 500);
  for(int i=0; i<rains.length; i++){
     rains[i] =  new rain();
  }
  
}

void draw(){
  background(216,191,216);
  for(int i=0; i<rains.length; i++){
     rains[i].update();
     rains[i].show();
  }
}