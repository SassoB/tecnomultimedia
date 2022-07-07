void instrucciones() {
  if (estado==3) {
    image(cielo2, width/2, height/2, width, height);
    textSize(24);
    fill(0);
    text("OBJETIVO DEL JUEGO: Hacer 20 de puntuaje \nesquivando los obstáculos.", 300, 100);
    text("COMO JUEGAR: Con el click del mouse el pajaro\nse impulsara hacia arriba, si no ira cayendo.", 300, 180);
    text("CONSEJO: Juegue por la zona baja de la ventana,\npero evita tocar las paredes y la parte superior\ne inferior de la ventana porque perderá\nautomáticamente. ", 300, 260);
    fill(255);
    rect(475, 435, 300, 100);
    textSize(45);
    fill(0);
    text("volver a inicio", 500, 500);

    if (mousePressed) {
      if ((estado==3)&& mouseX>475&& mouseX<775 && mouseY>435 &&mouseY<535)
        estado=0;
    }
  }
}
