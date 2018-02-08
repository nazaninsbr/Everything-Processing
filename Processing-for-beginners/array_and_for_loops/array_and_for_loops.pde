float []x = {100, 50, 10}; 
float []y= {100, 150, 110};

void setup(){
   size(600, 600);
   background(100, 0, 100);
   for(int i=0; i<3; i=i+1){
     ellipse(x[i], y[i], 20, 20);
   }
}