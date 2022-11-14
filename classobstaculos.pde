class Cubo {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Cubo(color C, float Xpos, float Ypos, float Xspeed) {
    c = C;
    xpos = Xpos;
    ypos = Ypos;
    xspeed = Xspeed;
    xpos=width+100;
  }


  void dibujarCubo() {
    fill(c);
    rect(xpos, ypos, 90, 50, 5 );

    xpos -= xspeed;
    if (xpos+100 < 0) {
      xpos = width+100;
    }
  }
}
