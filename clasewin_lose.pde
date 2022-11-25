class Win {
  float px, py;
  int ancho, alto;
  Win(float px, float py, int ancho, int alto ) {
    this.px = px;
    this.px = py;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarWin() {
    background(0);
    textSize(40);
    fill(0, 0, 255);
    textSize(40);
    text("     GANASTE!!!\nEN HORA BUENA", 280, 75);
    text("Felicidades por sobrevivir los 30 seg", 125, 250);
    textSize(20);
    text("para volver a jugar presione R", 280, 350);
    text("para volver al menu presionar ESPACIO", 240, 450);
  }
}

class Lose {
  float px, py;
  int ancho, alto;
  Lose(float px, float py, int ancho, int alto ) {
    this.px = px;
    this.px = py;
    this.ancho = ancho;
    this.alto = alto;
  }

  void dibujarLose() {
    background(0);
    textSize(40);
    fill(255, 0, 0);
    textSize(40);
    text("    PERDISTE!!!\nQUE LASTIMA", 280, 75);
    text("No llegaste a sobrevivir los 30 seg", 125, 250);
    textSize(20);
    text("para volver a jugar presione R", 280, 350);
    text("para volver al menu presionar ESPACIO", 240, 450);
  }
}
