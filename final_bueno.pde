void bueno() {
  if (pantalla==2) {
    background(0);
    fill(255);
    textFont(fuente);
    textSize(30);
    tint(255, 255, 255, Opacidad);
    text("Caperucita Roja llego bien a la\n          casa de su abuela.", 100, 275, 400, 500);
 text("Presionar 'Space' para reiniciar",100,400);
    for (int i = 0; i < numImagenes; i++) {
      posX[i] += velX[i];
      posY[i] += velY[i];
      image(imagenes[i], posX[i], posY[i]);
    }
    Opacidad-=1;
  }
}
