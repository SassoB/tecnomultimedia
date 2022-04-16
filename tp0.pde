//TP0 Sasso Braian Carmelo 
//Legajo: 91523/5

void setup() {
  size(500, 500);
  background(#40CFFF); //cielo
  strokeWeight(0);
  fill(#19C600);
  rect(0, 300, 500, 200); //suelo
  fill(#EDFF79);
  ellipse(0, 0, 200, 200); //sol
  fill(40);
  stroke(0);
  triangle(150, 100, 175, 50, 200, 100); //oreja izquieda
  triangle(300, 100, 325, 50, 350, 100); //oreja derecha
  fill(45);
  rect(150, 325, 50, 50); //pierna tracera izquierda
  rect(300, 325, 50, 50); //pierna tracera derecha
  stroke(40);
  strokeWeight(1);
  fill(255);
  rect(125, 375, 50, 25); //pata tracera izquierda
  rect(325, 375, 50, 25); //pata tracera derecha
  fill(40);
  triangle(250, 375, 350, 225, 375, 250); //cola
  triangle(150, 400, 250, 200, 350, 400); //cuerpo
  rect(150, 100, 200, 100); //parte superior de la cabeza
  quad(200, 250, 150, 200, 350, 200, 300, 250 ); //parte inferior de la cabeza
  strokeWeight(0);
  fill(255);
  circle(200, 150, 50); //ojo izquierda
  circle(300, 150, 50); //ojo derecha
  rect(225, 225, 50, 25); // nariz/boca
  strokeWeight(1);
  stroke(0);
  rect(200, 375, 50, 25); //pata delantera izquierda
  rect(250, 375, 50, 25); //pata delantera derecha
  line(232, 232, 150, 220); //bigote
  line(232, 237, 150, 240); //bigote
  line(232, 242, 150, 260); //bigote
  line(268, 242, 350, 260); //bigote
  line(268, 237, 350, 240); //bigote
  line(268, 232, 350, 220); //bigote
  line(250, 250, 250, 235); //bigote
}
