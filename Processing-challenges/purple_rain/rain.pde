class rain{
 float x; 
 float y;
 float size;
 
 
 rain(){
   x = random(0, width);
   y = random(0, height);
   size = 2;
 }
 
 void update(){
   y = y + 8;
   size += 1;
   if(y> height){
       x = random(0, width);
       y = random(0, height);
       size = 2;
   }
 }
 
 void show(){
   stroke(148,0,211);
   strokeWeight(4);
   line(x, y, x, y+size);
 }
 
}