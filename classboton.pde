class Boton {
  int bx, by, bancho, balto, actual, prox;
  String textBoton;

  Boton(int bx_, int by_, int bancho_, int balto_ ) {
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
  }

  void dibujarBoton(int actual_, int prox_, String texto_) {
    actual = actual_;
    prox = prox_;
    textBoton = texto_;
    fill(0, 150, 255);
    rect(bx, by, bancho, balto, balto/4);
    textSize(22);
    fill(255);
    text(textBoton, bx+5, by+balto-20);
  }

  boolean botonPress(int bx_, int by_, int bancho_, int balto_) {
    bx = bx_;
    by = by_;
    bancho = bancho_;
    balto = balto_;
    boolean presionado = mouseX>bx && mouseX<bx+bancho && mouseY>by && mouseY<by+balto == true;
    return presionado;
  }
}
