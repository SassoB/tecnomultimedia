void tres() {
  textFont(norm);
  if (frameCount >720 && frameCount < 960) {
    image(capacuatro, posX/2, posY/2, tamX+100, tamY+600);

    textSize(28);
    text(texto4, 380, 320 );
    fill(0);
  }

  textFont(conjuro);
  if (frameCount >960 && frameCount < 2000) {
    image(capacinco, posX/2, posY/2, tX, tY);
  }

  if (frameCount >960 && frameCount < 1250) {
    float px = random(width);
    float py = random(height);
    float tam = random(150, 200);
    image(sangre, px, py, tam, tam);

    textSize(80);
    fill(255, 255, 255, opacidad);
    text(texto5, 320, 320 );
  }
  if (frameCount >960 && frameCount < 1250) {
    tX++;
    tY++;
    opacidad++;
  }
  textFont(norm);
  if (frameCount>1250&&frameCount<2000) {
    tint(255, 255, 255, Opacidad);
    image(sangre2, width/2, height/2, 800, 600);

    textSize(30);
    fill(255, 255, 255, Opacidad);
    text("reiniciar", width/2-70, height/2-30);
    Opacidad+=3;
  }
}
