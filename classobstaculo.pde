class Obstaculo {
  float ox, oy, ps;
  int ancho, alto;
  Obstaculo() {
  }
  Obstaculo(float ox, float oy, int ancho, int alto ) {
    this.ox = ox;
    this.oy = oy;
    this.ancho = ancho;
    this.alto = alto;
  }
  void dibujarObstaculo() {
    fill(255, 255, 0);
    rect(ox, oy, ancho, alto);
    ox-=5;
    ox=ox-ps;
    if (ox+30<=0) {
      ox=width;
      oy= random(300, 450);
      ox-=random(1, 7);
      ps+=0.3;
    }
  }
}
