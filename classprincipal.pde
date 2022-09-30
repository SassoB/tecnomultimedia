class Esquivar {
  Fondo nubes;
  Skate s;
  Calle c;
  Obstaculo o;
  Esquivar() {
    nubes = new Fondo();
    c = new Calle(0, height/2, width, height/2);
    s = new Skate(100, 450, 100, 10);
    o = new Obstaculo(width, height/2, 25, height/4);
  }
  void display() {
    nubes.dibujarFondo();
    c.dibujarCalle();
    s.dibujarSkate();
    o.dibujarObstaculo();
  }
  void mueveSkate(int presionada) {
    s.moverSkate(presionada);
  }
}
