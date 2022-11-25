class Principal {
  int pantalla;
  Boton bot1, bot2, bot3;
  Pajaro a;
  Cubo[]cub= new Cubo[5];
  Reglas r;
  Inicio i;
  Creditos c;
  Win w;
  Lose l;
  Principal() {
    pantalla = 0;
    bot1 = new Boton(50, 50, 100, 50);
    bot2 = new Boton(650, 50, 100, 50);
    bot3= new Boton(50, 200, 100, 50);
    r = new Reglas(0, 0, width, height);
    c = new Creditos(0, 0, width, height);
    a = new Pajaro(width/10, height/2, 75, 75);
    for (int i = 0; i < cub.length; i++) {
      cub[i]= new Cubo(color(random(255), random(255), random(255)), width+100, i*height/cub.length, random(1.5, 5));
    }
    i = new Inicio(0, 0, width, height);
    w = new Win(0, 0, width, height);
    l= new Lose(0, 0, width, height);
  }

  void display() {
    println(pantalla);
    //menu
    if (pantalla== 0) {
      i.dibujarInicio();
      bot1.dibujarBoton(0, 1, "Jugar");
      bot3.dibujarBoton(0, 2, "Creditos");
    }
    //reglas
    if (pantalla==1) {
      r.dibujarReglas();
      bot1.dibujarBoton(1, 3, "Comenzar");
      bot2.dibujarBoton(1, 0, "volver");
    }
    //creditos
    if (pantalla==2) {
      c.dibujarCreditos();
      bot2.dibujarBoton(2, 0, "volver");
    }
    //juego
    if (pantalla ==3) {
      a.dibujarPajaro();
      if (a.py<0) {
        pantalla = 5;
      }
      if (a.py>height) {
        pantalla = 5;
      }

      for (int i= 0; i < cub.length; i++) {
        cub[i].dibujarCubo();
        if (colision(a.px, a.py, 30, cub[i].xpos, cub[i].ypos, 90, 50)) {
          println("perdiste");
          pantalla = 5;
        }
      }
    }

    //victoria
    if (a.tiempo>=30) {
      pantalla=4;
    }

    if (pantalla==4) {
      w.dibujarWin();
      if (keyPressed) {
        if (key=='R'||key=='r') {
          frameCount=0;
          a.tiempo=0;
          pantalla=3;
          a.py=height/2;
          for (int i= 0; i < cub.length; i++) {
            cub[i].dibujarCubo();
            cub[i].xpos= width+100;
          }
        }
        if (key==' '||key==' ') {
          frameCount=0;
          a.tiempo=0;
          pantalla=0;
          a.py=height/2;
          for (int i= 0; i < cub.length; i++) {
            cub[i].dibujarCubo();
            cub[i].xpos= width+100;
          }
        }
      }
    }
    //derrota
    if (pantalla==5) {
      l.dibujarLose();
      if (keyPressed) {
        if (key=='R'||key=='r') {
          frameCount=0;
          a.tiempo=0;
          pantalla=3;
          a.py=height/2;
          for (int i= 0; i < cub.length; i++) {
            cub[i].dibujarCubo();
            cub[i].xpos= width+100;
          }
        }
        if (key==' '||key==' ') {
          frameCount=0;
          a.tiempo=0;
          pantalla=0;
          a.py=height/2;
          for (int i= 0; i < cub.length; i++) {
            cub[i].dibujarCubo();
            cub[i].xpos= width+100;
          }
        }
      }
    }
  }

  void accionarBotones() {
    if (bot1.botonPress(50, 50, 100, 50) && pantalla==bot1.actual) {
      sonidoclick.play();
      pantalla = bot1.prox;
    }
    if (bot2.botonPress(50, 50, 100, 50) && pantalla==bot2.actual) {
      sonidoclick.play();
      pantalla = bot1.prox;
    }
    if (bot2.botonPress(650, 50, 100, 50) && pantalla==bot2.actual) {
      sonidoclick.play();
      pantalla = bot2.prox;
    }
    if (bot3.botonPress(50, 200, 100, 50)&& pantalla==bot3.actual) {
      sonidoclick.play();
      pantalla = bot3.prox;
    }
  }
  boolean colision(float cx, float cy, float radio, float rx, float ry, float rw, float rh) {
    float dis = dist(cx, cy, rx, ry);
    float d = dist(cx, cy, rx+rw, ry+rh);
    if (dis<radio || d<radio) {
      return true;
    } else {
      return false;
    }
  }
}
