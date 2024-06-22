

//Dibujo en estado quieto 

void grilla() {

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
      float d = dist(centroX, centroY, x, y);

      //Agrandamiento de circulos
      float Tam = map(d, 0, dist(400, 100, centroX, centroY), TamMin, TamMax);

      //Tamaño
      Tam = max(Tam, TamMin);

      //Circulos
      fill( 255 );
      ellipse(x, y, Tam, Tam);
    }
  }
}



//Dibujo con efecto de movimiento

void grillamovimiento() {

  //Columnas y filas
  int columnas = 20;
  int filas = 20;

  //Espacio entre circulos
  float espacioX = width / 2 / columnas;
  float espacioY = height / filas;

  //Tamaño de los circulos
  float TamMin = 0;
  float TamMax = min(espacioX, espacioY);




  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      
      //Coordenadas del centro de cada circulo
      float x = 400 + i * espacioX + espacioX / 2;
      float y = j * espacioY + espacioY / 2;

      //Distancia al centro
      float d = dist(mouseX, mouseY, x, y);

      //Agrandamiento de circulos
      float Tam = map(d, 0, dist(400, 100, mouseX, mouseY), TamMin, TamMax);

      //Tamaño
      Tam = max(Tam, TamMin);

      //Circulos
      fill( 255 );
      ellipse(x, y, Tam, Tam);
    }
  }
}




void grillamovimientocolor() {

  //Columnas y filas
  int columnas = 20;
  int filas = 20;

  //Espacio entre circulos
  float espacioX = width / 2 / columnas;
  float espacioY = height / filas;

  //Tamaño de los circulos
  float TamMin = 0;
  float TamMax = min(espacioX, espacioY);
  
  
  

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      
      //Coordenadas del centro de cada circulo
      float x = 400 + i * espacioX + espacioX / 2;
      float y = j * espacioY + espacioY / 2;

      //Distancia al centro
      float d = dist(mouseX, mouseY, x, y);

      //Agrandamiento de circulos
      float Tam = map(d, 0, dist(400, 100, mouseX, mouseY), TamMin, TamMax);

      //Tamaño
      Tam = max(Tam, TamMin);

      //Circulos
      fill( ColorRandom );
      ellipse(x, y, Tam, Tam);
    }
  }
}


void generarColor() {
  
  //Generador de color
  ColorRandom = color(random(255), random(0), random(255));
  ColorRandom2 = color(random(255), random(255), random(0));
  
}
