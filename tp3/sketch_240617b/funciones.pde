//Dibujo en estado quieto 

void grilla (float PX, float PY, int Color) {

  //Columnas y filas
  int columnas = 20;
  int filas = 20;

  //Espacio entre circulos
  float espacioX = width / 2 / columnas;
  float espacioY = height / filas;

  //Tamaño de los circulos
  float TamMin = 0;
  float TamMax = min(espacioX, espacioY);

  //Centro
  float centroX = 600;
  float centroY = height / 2;




  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {

      //Coordenadas del centro de cada circulo
      float x = 400 + i * espacioX + espacioX / 2;
      float y = j * espacioY + espacioY / 2;

      //Distancia al centro
      float d = dist(PX, PY, x, y);

      //Agrandamiento de circulos
      float Tam = map(d, 0, dist(400, 100, centroX, centroY), TamMin, TamMax);

      //Tamaño
      Tam = max(Tam, TamMin);

      //Circulos
      fill( Color );
      ellipse(x, y, Tam, Tam);
    }
  }
}



void generarColor() {
  
  //Generador de color
  ColorRandom = color(random(255), random(0), random(255));
  ColorRandom2 = color(random(255), random(255), random(0));
  
}



void reiniciar(){
 mouseY = height / 2;
 mouseX = 600;
 
}
