void setup(){
   background(0);
   size(600, 600);
   ArrayList myArray = new ArrayList();
   PVector p = new PVector(20, 20);
   myArray.add(100.5);
   myArray.add(p);
   myArray.add("Something");
   println(myArray.size());
   myArray.clear();
   println(myArray.size());
}