void historia() {
  if (pantalla==1) {
    background(200);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperucita iba caminando feliz sin ningura preocupacion, pero encontro otro camino que se desviaba pero era mas corto.\nQue elige Caperucita?\nA: seguir en el camino que iba\nB: ir por el camino corto", 25, 25, 600, 400);
    fill(255);
    rect(100, 525, 100, 50);
    fill(0);
    text("A", 140, 560);
    fill(255);
    rect(400, 525, 100, 50);
    fill(0);
    text("B", 440, 560);
    if (mousePressed) {
      if ((pantalla==1) &&mouseX>100 &&mouseY>525 &&mouseX<200 &&mouseY<575) {
        pantalla=2;
      }
      if ((pantalla==1) &&mouseX>400 &&mouseY>525 &&mouseX<500 &&mouseY<575) {
        pantalla=3;
      }
    }
  }
  if (pantalla==3) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperucita Roja se desvia del camino para ir por el corto, al rato se cruza con un lobo.\nDecides hablar con el lobo?\nA: SI 'le dice a dodne va, pero primero va a juntar flores'.\nB: NO 'lo ignora y sale corriendo'.", 50, 50, 500, 500);
    fill(255);
    rect(100, 250, 100, 50);
    fill(0);
    text("A", 140, 285);
    fill(255);
    rect(400, 250, 100, 50);
    fill(0);
    text("B", 440, 285);
    if (mousePressed) {
      if ((pantalla==3) &&mouseX>100 &&mouseY>250 &&mouseX<200 &&mouseY<300) {
        pantalla=4;
      }
      if ((pantalla==3) &&mouseX>400 &&mouseY>250 &&mouseX<500 &&mouseY<300) {
        pantalla=2;
      }
    }
  }
  if (pantalla==4) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperusita le cuenta a donde va y se despide.\nEl lobo con esa informacion se le ocurrio una idea, pero para cumplir su idea tiene que llegar a la casa de la abuela primero\nllegara primero?\nA: NO 'Caperucita Roja llega primero y cierra con llave la puerta porque se dio cuenta de su error'.\nB: SI 'El lobo llega a la casa para comer a la buela y se disfraza con su ropa'.", 50, 50, 500, 500);
    fill(255);
    rect(100, 525, 100, 50);
    fill(0);
    text("A", 140, 560);
    fill(255);
    rect(400, 525, 100, 50);
    fill(0);
    text("B", 440, 560);
    if (mousePressed) {
      if ((pantalla==4) &&mouseX>100 &&mouseY>525 &&mouseX<200 &&mouseY<575) {
        pantalla=2;
      }
      if ((pantalla==4) &&mouseX>400 &&mouseY>525 &&mouseX<500 &&mouseY<575) {
        pantalla=5;
      }
    }
  }
  if (pantalla==5) {
    background(75);
    textFont(fuente);
    textSize(20);
    fill(0);
    text("Caperucita llega a la casa de su abuela, emocionada por verla, pero ve algo raro en ella.\nCaperucita se da cuenta que no es su abuela?\n A: SI 'Caperucita grita fuerte, alerta a unos leñadores que estaban cerca y la rescatan\nB: NO 'El lobo se Abalanza Sobre Caperucita roja y la devora'", 50, 50, 500, 500);
    fill(255);
    rect(100, 525, 100, 50);
    fill(0);
    text("A", 140, 560);
    fill(255);
    rect(400, 525, 100, 50);
    fill(0);
    text("B", 440, 560);
    if (mousePressed) {
      if ((pantalla==5) &&mouseX>100 &&mouseY>525 &&mouseX<200 &&mouseY<575) {
        pantalla=2;
      }
      if ((pantalla==5) &&mouseX>400 &&mouseY>525 &&mouseX<500 &&mouseY<575) {
        pantalla=6;
      }
    }
  }
  if (pantalla==6) {
    background(75);
    textFont(fuente);
    textSize(30);
    fill(0);
    text("Caperucita Roja, se acerco a al lobo pensando que era su abuela, pero cuando se dio cuenta, el lobo ya se abalanzo y la devoro.",75,175,500,500);
    text("Presionar 'Space' para reiniciar",100,400);
  }
}
