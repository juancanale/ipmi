 //Programacion TP3
 
 
//Video: https://youtu.be/MW93O6d7tYA

//Imagen
PImage IlusionImagen;

//Estados
String estado;

//colorrandom
  color ColorRandom = color(random(255), random(0), random(255));
  color ColorRandom2 = color(random(255), random(255), random(0));



void setup(){
 size( 800, 400 ); 
 
   estado = "Inicio";
 
 
background( 0 );
 //carga de imagen
 IlusionImagen = loadImage( "Ilusion.jpg" );
 
 noStroke(); 
  
   grilla( 600, height / 2, 255 );  
  

}
void draw(){
  
 

   image( IlusionImagen, 0, 0);  
  
  
  
  if(estado.equals("Movimiento") ){
      background( 0 );
      grilla( mouseX , mouseY , 255 );
      image( IlusionImagen, 0, 0);
      
      
 }      
      if(estado.equals("MovimientoColor") ){ 
      background( ColorRandom2 );
      grilla( mouseX , mouseY ,  ColorRandom );
      image( IlusionImagen, 0, 0);
      
      
}


}
void keyPressed() { 
  if(estado.equals("Movimiento") && ( key == ' ' ) )
  estado = "MovimientoColor";
  generarColor();  
  
  
    if(estado.equals("Movimiento") && ( key == 'r' ) )  
    
    reiniciar();
    
  
   if(estado.equals("MovimientoColor") && ( key == 'r' ) )
   
   reiniciar();
 
  
  
  
}

void mouseClicked() { 
  
  
  estado = "Movimiento";
  
 
  
  
  
}

  
  
