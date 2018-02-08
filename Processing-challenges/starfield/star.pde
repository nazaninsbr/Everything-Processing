class star{
 float x;
 float y; 
 float z; 
 
 float pz;
 
  star(){
     x = random(-width, width);
     y = random(-height, height);
     z = random(-width, width);
     pz = z;
  }
  
  
  void update(){
    z = z-10;
    if(z <1){
      x = random(-width, width);
      y = random(-height, height);
      z = width;
      pz = z;
    }
  }
  
  void show(){
     fill(255, 255, 255); 
     float sx = map(x/z, 0, 1, 0, width);
     float sy = map(y/z, 0, 1, 0, height);
     float r = map(z , 0, width, 10, 0);
     ellipse(sx, sy,r, r);
     
     float px = map(x/pz, 0, 1, 0, width);
     float py = map(y/pz, 0, 1, 0, height);
     
     pz = z;
     
     stroke(200);
     line(px, py, sx, sy);
     
  }
}