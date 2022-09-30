class Rueda {
  float rx, ry, d;
  Rueda() {
  }
  void dibujarRueda(float rx, float ry, float d) {
    this.rx = rx;
    this.ry = ry;
    this.d = d;
    push();
    translate(rx, ry);
    rotate(radians(frameCount*+1));
    fill(255);
    strokeWeight(2);
    circle(0, 0, d);
    line(-d/2, 0, d/2, 0);
    line(0, -d/2, 0, d/2);
    fill(0);
    circle(0, 0, d/2);
    pop();
  }
}
