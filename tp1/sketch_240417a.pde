PImage paisaje;

void setup(){
  size(800, 400);
  background(144,175,227);
  paisaje = loadImage("paisaje.jpg");
  
  
}

void draw(){
 
  fill(124,146,195);
  noStroke(); 
  triangle(400+-100, 265, 400+150, 50, 400+400, 265);
  fill(255);
  triangle(400+-20, 195, 400+150, 50, 400+320, 195 );
   
   image(paisaje, -100, 0);
   
   fill(96, 150, 183);
   rect(400+0, 350, 400+400, 350);
   fill(75, 80, 55);
   rect(400+0, 290, 400+400, 70);
   
   fill(67,70,123);
   rect(400+0, 265, 400+400, 30);
   fill(75, 63, 55);
   triangle(400+0, 298, 400+140, 200, 400+400 , 300);
   
   //162, 137, 95
   //67,70,123
  
  
  println( mouseX + " / " + mouseY );
  
}
