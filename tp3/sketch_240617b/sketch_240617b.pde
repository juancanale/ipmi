 //Programacion TP3
 
 
// https://www.youtube.com/watch?v=i78UvIekYPk&ab_channel=JuanCanale

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
  
   grilla();  
  

}
void draw(){
  
 

   image( IlusionImagen, 0, 0);  
  
  
  
  if(estado.equals("Movimiento") ){
      background( 0 );
      grillamovimiento();
      image( IlusionImagen, 0, 0);
      
      
 }      
      if(estado.equals("MovimientoColor") ){ 
      background( ColorRandom2 );
      grillamovimientocolor();
      image( IlusionImagen, 0, 0);
      
      
}

     if(estado.equals("Quieto") ){
      background( 0 );
      grilla();
      image( IlusionImagen, 0, 0);
    }
    

}
void keyPressed() { 
  if(estado.equals("Movimiento") && ( key == ' ' ) )
  estado = "MovimientoColor";
  generarColor();  
  
  
    if(estado.equals("Movimiento") && ( key == 'r' ) )  
    estado = "Quieto";
    
  
   if(estado.equals("MovimientoColor") && ( key == 'r' ) )
  estado = "Quieto";
  
  
  
}

void mouseClicked() { 
  
  
  estado = "Movimiento";
  
 
  
  
  
}

  
  
