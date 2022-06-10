/*tp2 Sasso Braian Carmelo
 legajo: 91523/5
 puede reiniciar con cualquier boton del teclado
 
 https://www.youtube.com/watch?v=UbuD2LVQYN0 */
 
void setup() {
  size(800, 600);
}

void draw() {
  translate(width/2, height/2);
  background(255, mouseX, mouseY);
  for (int c=0; c<35; c++) {
    rotate(map(mouseX, mouseY, width, PI/2, PI/50));
    translate(0, map(mouseY, 0, width, 0, 10));

    if ( c %2 ==0)
      fill(0);

    else
      fill(random(255), random(255), random(255));

    float tam = (width/2+150)-c*15.5;
    ellipse(0, 0, tam, tam);
}
reinicio();
  }
