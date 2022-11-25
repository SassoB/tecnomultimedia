class Inicio {
  PImage cielo = loadImage("cieloPP.png");
  float px, py;
  int ancho, alto;
  Inicio(float px, float py, int ancho, int alto ) {
    this.px = px;
    this.px = py;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarInicio() {
    imageMode(CORNER);
    // rect(px, py, ancho, alto);
    image(cielo, 0, 0, width, height);
    fill(0);
    textSize(40);
    text("''EL PAJARO VOLADOR''", 285, 300);
  }
}

class Reglas {
  float px, py;
  int ancho, alto;
  PImage cielo = loadImage("cieloPP.png");
  Reglas(float px, float py, int ancho, int alto ) {
    this.px = px;
    this.px = py;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarReglas() {
    image(cielo, px, py, ancho, alto);
    textSize(40);
    fill(0);
    text("Como jugar", 280, 75);
    textSize(20);
    text("El juego trata de sobrevivir el mayor tiempo posible sin chocar con ningun obstaculo", 40, 150);
    textSize(40);
    text("Reglas", 325, 250);
    textSize(20);
    text("es my facil, se juega con el click Izquierdo o Derecho del mouse para que el pajaro siga\nvolando,si no lo hace ira cayendo, tienes que sobrevivir 30seg, si chocas con un obstaculo o si\nsales de la zona superior e inferior de la ventana    PIERDES!!!", 40, 325);
    textSize(40);
    text("MUCHA SUERTE JUGADOR!!", 175, 500);
  }
}

class Creditos {
  float px, py;
  int ancho, alto;
  PImage cielo = loadImage("cieloPP.png");
  Creditos(float px, float py, int ancho, int alto ) {
    this.px = px;
    this.px = py;
    this.ancho = ancho;
    this.alto = alto;
  }
  void dibujarCreditos() {
    image(cielo, px, py, ancho, alto);
    fill(0);
    textSize(30);
    text("Director: Sasso, Braian\nCreador de juego: Sasso, Braian\nMusica: Flappy Bird Theme Song", 200, 200);
  }
}
