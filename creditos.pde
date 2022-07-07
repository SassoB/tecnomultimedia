void creditos() {
  if (estado==4) {
    image(cielo, width/2, height/2, width, height);
    textSize(40);
    fill(0);
    text("Creador del juego: Sasso, Braian :D\n\nDirector: Sasso, Braian :D\n\nDiseñador: Sasso, Braian :D\n\nAlumno: Sasso, Braian?? ", 125, height+pos);
    pos--;

    if (height+pos<-400) {
      fill(255);
      rect(250, 220, 300, 100);
      textSize(45);
      fill(0);
      text("volver a inicio", 275, 285);
      if (mousePressed) {
        if ((estado==4)&& mouseX>250&& mouseX<550 && mouseY>220 &&mouseY<320)
          estado=0;
      }
    }
  }
}
