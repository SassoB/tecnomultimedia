class Pajaro {
  float px, py, ps;
  int tam;
  Pajaro(){
  }
  Pajaro(float px, float py, float ps, int tam ) {
    this.px = px;
    this.py = py;
    this.ps = ps;
    this.tam = tam;
  }

  void dibujarPajaro() {
    fill(255, 0, 0);
    circle(px, py, tam);
    if (mousePressed)
    py=py-15;
    else
    py=py+4;
    }
  }
