/*tp2 Sasso Braian Carmelo
 legajo: 91523/5
 
https://youtu.be/-Ic1EfsFLUM
 */

PImage cielo, cielo2;
float CY, CS;
float PX, PY, PS;
int estado=0;
int score;
int num=0;
PImage [] pajaro= new PImage[4];
int orden;
int pos;
void setup() {
  size(800, 600);
  CY=50;
  CS=3;
  PX=width-30;
  PY=50;
  PS=6;
  score=0;
  cielo= loadImage("cieloPP.png");
  cielo2=loadImage("captura.png");
  imageMode(CENTER);
}

void draw() {
  if (estado==0) {
    image(cielo, width/2, height/2, width, height);
    for (int i=1; i<4; i++) {
      fill(255);
      rect (100, i*100, 250, 50);
      textSize(40);
      fill(0);
      text("jugar", 175, 135);
      text("instrucciones", 120, 240);
      text("creditos", 150, 340);
    }
  }
  if (mousePressed) {
    if ((estado==0) &&mouseX>100 && mouseY>100 && mouseX<350 && mouseY<150)
      estado=1;

    if ((estado==0) &&mouseX>100 && mouseY>200 &&mouseX<350 && mouseY<250)
      estado=3;

    if ((estado==0) &&mouseX>100&& mouseY>300 &&mouseX<350 &&mouseY<350)
      estado=4;
  }
  juego();

  instrucciones();

  creditos();
}
//colision
boolean circleRect(float cx, float cy, float radio, float rx, float ry, float rw, float rh) {
  float tX = cx;
  float tY = cy;
  if (cx < rx)         tX = rx;
  else if (cx > rx+rw) tX = rx+rw;
  if (cy < ry)         tY = ry;
  else if (cy > ry+rh) tY = ry+rh;
  float distX = cx-tX;
  float distY = cy-tY;
  float distance = sqrt( (distX*distX) + (distY*distY) );
  if (distance <= radio) {
    return true;
  }
  return false;
}
