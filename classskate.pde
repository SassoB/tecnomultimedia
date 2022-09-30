class Skate {
  float sx, sy;
  int ancho, alto;
  Rueda r;
  Skate(float sx, float sy, int ancho, int alto ) {
    this.sx = sx;
    this.sy = sy;
    this.ancho = ancho;
    this.alto = alto;
    r = new Rueda();
  }
  void dibujarSkate() {
    fill(200, 130, 20);
    rect(sx, sy, ancho, alto);
    r.dibujarRueda(sx+15, sy+alto+5, alto );
    r.dibujarRueda(sx+ancho-15, sy+alto+5, alto);
  }
  void moverSkate(int tecla) {
    if (tecla==UP) {
      if (sy>=height/2+alto)
        sy -= 25;
    }
    if (tecla == DOWN) {
      if (sy<=height-50)
        sy += 25;
    }
  }
}
