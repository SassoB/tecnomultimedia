void dos() {
  textFont(norm);
  if (frameCount >240 && frameCount < 480) {
    image(capados, posX/2, posY/2, tamX, tamY+600);
    textSize(32);
    text(texto2, 330, 280 );
    fill(0);
  }

  if (frameCount >480 && frameCount < 720) {
    image(capatres, posX/2, posY/2, tamX, tamY+600);

    textSize(30);
    text(texto3, 50, 290 );
    fill(255);
  }
}
