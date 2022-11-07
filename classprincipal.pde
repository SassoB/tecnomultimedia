class Principal {
  Obstaculo o;
  Pajaro a;
  Inicio i;
  Principal() {
    o = new Obstaculo(width/2, height/2, 25, 100);
    a = new Pajaro(width/10,height/2,50,50);
    //i = new Inicio(0,0,width,height);
  }

  void display() {
    o.dibujarObstaculo();
    a.dibujarPajaro();
    //i.dibujarInicio();
  }
}
