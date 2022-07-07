void juego() {
  if (estado==1) {
    image(cielo, width/2, height/2, width, height);
    textSize(20);
    fill(0);
    text("Score:"+ score, 10, 20);
    fill(100, 100, 255);
    circle(50, CY, 30);
    for (int i=0; i<4; i++) {
      pajaro[i] = loadImage("bird"+i+".png");
    }
    if (frameCount%6==0) {
      orden++;
      orden = orden%4;
    }
    image(pajaro[orden], 50, CY-1, 110, 115);
    //salto
    if (mousePressed)
      CS=CS-9;
    else
      CS=CS+2;
    CY=CY+CS;
    if (CY<0) {
      estado=2;
    } else if (CY>height) {
      estado=2;
    }
    //limite de velocidad
    if (CS<-10)
      CS=-9;
    else if (CS>8)
      CS=7;
      
    fill(100, 255, 100);
    rect(PX, PY, 30, 200);
    PX=PX-PS;
    if (PX+30<0) {
      PX=width;
      PY=random(height)-150/2;
      score+=1;
      PS+=0.8;
    }
  }
  //estado perderdiste
  if (circleRect(50, CY, 15, PX, PY, 30, 200))
    estado=2;
  if (estado==2) {
    background(0);
    fill(255, 0, 0);
    textSize(48);
    text("PERDISTE !!!!", 50, 100);
    textSize(24);
    text("Tu Score es: "+ score, 50, 200);
    text("Presionar ''R'' para volver a jugar\n\nPresionar ''SPACE'' para volver a inicio", 50, 300);
    if (keyPressed)
      if (key=='r'||key=='R') {
        estado=1;
        setup();
      }
    if (keyPressed)
      if (key==' ') {
        estado=0;
        setup();
      }
  }
  //estado ganaste
  if (score>=20)
    estado=5;
  if (estado==5) {
    image(cielo, width/2, height/2, width, height);
    fill(0);
    textSize(48);
    text("GANASTE !!!!", 275, 100);
    textSize(40);
    text("Sos lo mejor de lo mejor!!!", 175, 175);
    text("         Si deseas volver a jugar presiona ''R'' \n\n Si quieres volver a inicio presiona ''SPACE'' ", 50, 340);
    if (keyPressed)
      if (key=='r'||key=='R') {
        estado=1;
        setup();
      }
    if (keyPressed)
      if (key==' ') {
        estado=0;
        setup();
      }
  }
}
