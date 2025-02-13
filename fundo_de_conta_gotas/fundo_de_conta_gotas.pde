PImage cartola;
color c = 255;

void setup(){
  size(600,600);
  cartola = loadImage("cartola.jpg");
  cursor(CROSS);
}

void draw(){
  background(c);
  //tint(255,10,75,255);
  image(cartola,150,150,300,300);
}

void mousePressed(){
  c = get(mouseX,mouseY); //quando clica pega a cor e coloca no fundo
}
