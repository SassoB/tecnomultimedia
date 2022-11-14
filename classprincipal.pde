class Principal {
  Cubo[]cub= new Cubo[5];
  ArrayList <Cubo> Car;

  Pajaro a;
  //Inicio i;
  Principal() {
    for (int i = 0; i < cub.length; i++) {
      cub[i]= new Cubo(color(random(255), random(255), random(255)), 0, i*height/cub.length, random(1, 4));
    }

    a = new Pajaro(width/10, height/2, 75, 75);
    //i = new Inicio(0,0,width,height);
  }

  void display() {
    for (int i= 0; i < cub.length; i++) {
      cub[i].dibujarCar();
    }
    a.dibujarPajaro();
    //i.dibujarInicio();
  }
}
