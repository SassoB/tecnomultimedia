class Cubo {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Cubo(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    xpos=width+100;
  }


  void dibujarCar() {
    fill(c);
    rect(xpos, ypos, 90, 50, 5 );

    xpos -= xspeed;
    if (xpos+100 < 0) {
      xpos = width+100;
    }
  }
}
