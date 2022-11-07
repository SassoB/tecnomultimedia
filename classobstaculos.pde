class Obstaculo {
  float ox, oy, ps;
  int ancho, alto;

  Obstaculo(float ox, float oy, int ancho, int alto ) {
    this.ox = ox;
    this.oy = oy;
    this.ancho = ancho;
    this.alto = alto;
  }
  void dibujarObstaculo() {
    fill(255, 255, 0);
    rect(ox, oy, ancho, alto);
  }
}
