/*tp2 Sasso, Braian Carmelo 
 legajo: 91523/5
 
 https://youtu.be/9qX2eYSDtkk
 */
Esquivar p;
void setup() {
  size(800, 600);
  p = new Esquivar();
}

void draw() {
  background(85,212,235);
  p.display();
}
void keyPressed() {
  p.mueveSkate(keyCode);
}
