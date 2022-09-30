class Fondo {
  PImage nubes, avion;
  int nx, ax;
  Fondo() {
    nx = -width;
    nubes = loadImage("nube.png");
    avion = loadImage("avioon.png");
  }
  void dibujarFondo() {
    image(nubes, nx, 0);
    image(avion,ax, 100, 100,100 );
    mover();
  }
  void mover() {
    nx = nx>-width ? nx : width;
    nx --;
    
    ax = ax<width ? ax : -width;
    ax ++; 
  }
}

class Calle {
  float cx, cy;
  int ancho, alto;
  Obstaculo o;

  Calle(float cx, float cy, int ancho, int alto ) {
    this.cx = cx;
    this.cy = cy;
    this.ancho = ancho;
    this.alto = alto;
    o= new Obstaculo();
  }
  void dibujarCalle() {
    fill(70);
    rect(cx, cy, ancho, alto);
    fill(250);
    rect(cx, 440, ancho, 10);
  }
}
