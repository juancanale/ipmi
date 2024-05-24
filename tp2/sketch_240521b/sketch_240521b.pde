//Programacion TP2

//imagenes
PImage Fallout1;
PImage Fallout2;
PImage Fallout3;
PImage Fallout4;


//boton inico
int esquinaX1 = 270;
int esquinaY1 = 420;
int ancho = 100;
int alto = 50;

//boton reset
int esquinaX2 = 500;
int esquinaY2 = 420;


//estados
String estado;  

//efectos
int aparecer = 0; 
int aparecer2 = 0;
int aparecer3 = 0;

//contador
int contadorPower1Frames = 0;
int contadorPower2Frames = 0;
int contadorPower3Frames = 0;


void setup(){
  size( 640, 480 );
  
  //imagenes
  Fallout1 = loadImage( "fallout1.jpg" );
  Fallout2 = loadImage ( "fallout2.jpg" );
  Fallout3 = loadImage ( "fallout3.jpg" );
  Fallout4 = loadImage ( "fallout4.jpg");
  
  estado = "menu";
  
}

void draw(){

  //estado 1
  if(estado.equals("menu") ){
  background(0);
  image( Fallout1, 130, 0 ); 
  
  
  //boton de Empezar
  fill(  20, 90, 50 );
  strokeWeight(2);
  rect( esquinaX1, esquinaY1, ancho, alto );
  fill( 0 );
  textSize( 22 ); 
  text( "Empezar", 280 , 450 ); 
  
 
  
  
  //estado 2 presentacion
  }if( estado.equals("power1")  ){
    background( 0 );
    image( Fallout2, 130, 0 ); 
    fill( 255, aparecer );
    
    
   aparecer = aparecer + 1  ;
   aparecer = constrain( aparecer, 0, 255 );
    
    text("Fallout 3 es un videojuego de rol de disparos", 103 , 350 );
    text("y de accion en primera persona, creado en 2008. ", 90 , 372 );
    
  
  
  }
  
//contador de tiempo

    if ( estado.equals("power1" ) ) {
    contadorPower1Frames++;
  }
  
 
  
    if (estado.equals("power1") && contadorPower1Frames/60 >= 5) {
    estado = "power2";
    
    
    }
    if( estado.equals( "power2" )  ){
    contadorPower2Frames++;
    
    
  }
  
  if (estado.equals("power2") && contadorPower2Frames/60 >= 10) {
    estado = "power3";
  

  }
  
  
      if ( estado.equals("power3" ) ) {
    contadorPower3Frames++;
  }
  
 
  
    if (estado.equals("power3") && contadorPower3Frames/60 >= 15) {
    estado = "power4";
    
    
    }
     
     
    //estado 3
    if( estado.equals("power2")  ){
    background( 0 ); 
    image( Fallout3, 0 , 0 );
    fill( 255 , aparecer2 );
    
    aparecer2++;
    aparecer2 = constrain( aparecer2, 0, 255 );
    
    
    
    text( "Está ambientado dentro de un entorno de mundo abierto", 20 , 350);
    text( "post-apocalíptico que abarca una región a escala que consiste ", 20 , 372);
    text( "en las ruinas de Washington, D.C y alrededores.", 20 , 394);
   
    
   
  }
  
  if(estado.equals( "power3")  ){
    background( 0 ); 
    image( Fallout4, 0 , 0 );
    fill( 255, aparecer3 );
    
    aparecer3++;
    aparecer3 = constrain( aparecer3, 0, 255 );
   
    
    text( "El juego comienza dentro del Refugio 101, donde nacemos y nos" , 20 , 350 ); 
    text( "criamos, hasta la juventud, donde la misteriosa salida de nuestro ", 20 , 372);
    text( "padre nos hara abandonar el refugio en su busqueda por un ", 20 , 394);
    text( "extenso yermo post-apocaliptico, donde nosotros escribiremos la", 20 , 416);
    text( "historia de nuestro personaje por medio de sus decisiones y", 20 , 438);
    text( "como manejemos los eventos.", 20 , 460);
    
  }
  
 
 
   //estado 4 (reset)
  
   if(estado.equals( "power4")  ){
    background( 0 ); 
    image( Fallout1, 0 , 0 );
    
    //boton reset
    fill(  20, 90, 50 );
    strokeWeight(2);
    rect( esquinaX2, esquinaY2, ancho, alto );
    fill( 0 );
    textSize( 22 ); 
    text( "Reset", esquinaX2+28 , esquinaY2+30 ); 
    
    
    fill( 255 );
    text( "Juan Bautista Canale", 420, 100);
    text( "118982/7", 420, 122);
     text( "Comision 2", 420, 144);
   
  
  
  
  
  
   }
}


//botones

void mousePressed(){
  if( mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto ) {
  println( "se presiono empezar" ); 
  estado = "power1"; 
  
  contadorPower1Frames = 0; 
  
  }
  
 if ( estado.equals("power4") && mouseX > esquinaX2 && mouseX < esquinaX2 + ancho && mouseY > esquinaY2 && mouseY < esquinaY2 + alto    ) {
  println( "se presiono reset" ); 
  estado = "power1"; 
  
   contadorPower1Frames = 0; 
   contadorPower2Frames = 0;
   contadorPower3Frames = 0;
  
  aparecer = 0; 
  aparecer2 = 0;
  aparecer3 = 0;
  
  
 }
}
