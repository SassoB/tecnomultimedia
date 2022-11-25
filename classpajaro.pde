class Pajaro {
  PImage cielo = loadImage("cieloPP.png");
  PImage [] paj= new PImage[4];
  float px, py, ps;
  int tam, orden, tiempo;
  Pajaro() {
  }
  Pajaro(float px, float py, float ps, int tam ) {
    this.px = px;
    this.py = py;
    this.ps = ps;
    this.tam = tam;
  }

  void dibujarPajaro() {
    imageMode(CENTER);
    fill(0);
    textSize(20);
    text("tiempo: "+ tiempo, width-100, height-20);
    for (int i=0; i<4; i++) {
      paj[i] = loadImage("bird"+i+".png");
    }
    if (frameCount%7==0) {
      orden++;
      orden = orden%4;
    }
    image(paj[orden], px, py, tam, tam);
    fill(255, 0, 0);
    if (mousePressed) {
      py=py-12;
    } else {
      py=py+4;
    }
    if (frameCount%60==0) {
      tiempo++;
    }
  }
}
