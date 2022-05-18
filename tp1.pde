/*
tp1 Sasso Braian Carmelo 
Legajo: 91523/5
puede reiniciar el video al final cuando este permitido, reiniciar con el click del mouse en la gota de sangre 
*/

import processing.sound.*;
SoundFile sonido;

PImage capauno, capados, capatres, capacuatro, capacinco, sangre, sangre2;
PFont norm, conjuro;

String texto = "    Director \n James Wan", texto2= "     Music by \n Joseph Bishara";
String texto3= "Starring\nPatrick Wilson &\nVera Farmiga", texto4= "real cases of the Warren family", texto5= "         the\n conjuring";

int posX, posY, tamX, tamY, tX, tY, opacidad, Opacidad;
int x=400;
int y= 300;
int radius=150;


void setup() {
  size(800, 600);
  sonido=new SoundFile(this, "conjuring.webm");
  sonido.play();

  imageMode(CENTER);
  ellipseMode(RADIUS);
  posX= width;
  posY=height;
  tamX= width;
  tamY=height;
  tX=tamX+100;
  tY=tamY+600;
  capados = loadImage("aaa.png");
  capauno = loadImage("a.png");
  capatres=loadImage("aaaaa.jpg");
  capacuatro=loadImage("aaaa.png");
  capacinco=loadImage("conjuro.PNG");
  sangre=loadImage("gotaa.png");
  sangre2=loadImage("saangre.png");
  norm = loadFont("ArchivoNarrow-Bold-48.vlw");
  conjuro = loadFont("GhastlyPanic-48.vlw");
}

void draw() {
  tint(255,255,255,255);
  println(frameCount);
  textFont(norm);
  if (frameCount>0 && frameCount<240) {
    image(capauno, tamX/2, posY/2, tamX+45, tamY+720);

    textSize(28);
    text(texto, 320, 150 );
    fill(0);
  }
  dos();
  tres();
}
void mousePressed() {
  //reiniciar 
  if (frameCount>1250&&frameCount<3000) {
    float d= dist(mouseX, mouseY, x, y);
    if (d < radius) {
      frameCount=(0);
      sonido.cueFrame(0);
      sonido.play();
      tX=tamX+100;
      tY=tamY+600;
      opacidad=1;
      Opacidad=1;
    }
  }
}
