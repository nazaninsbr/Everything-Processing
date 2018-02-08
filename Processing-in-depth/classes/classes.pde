void setup(){
  size(600, 600);
  frameRate(60);
  Ant ant1 = new Ant();
  ant1.x = 10; 
  ant1.y = 20;
  
  
  Ant ant2 = new Ant();
  
  
  ellipse(ant1.x, ant1.y, 40, 40);
  ellipse(ant2.x, ant2.y, 20, 20);
}