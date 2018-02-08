class star{
 float x;
 float y; 
 float z; 
 
  star(){
    x = random(0, width);
    y = random(0, height);
  }
  
  
  void update(){
    x += 1;
    y += 1;
    if(x>width-2){
      x = random(0, width);
    }
     if(y>height-2){
      y = random(0, height);
    }
    
  }
  
  void show(){
     fill(255, 255, 255); 
     ellipse(x, y, 5, 5);
  }
}