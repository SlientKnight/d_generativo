PImage cartola;
color c = 0;
float vermeio;

void setup(){
  size(600,600);
  cartola = loadImage("cartola.jpg");
  imageMode(CENTER);
  cursor(CROSS);
}

void draw(){
  background(c);
  vermeio = map(mouseX+mouseY,0,1200,0,255);
  
  tint(vermeio,200,100,255);
  //image(cartola,width/2,height/2,300,300);
  image(cartola,width/2,height/2);
}

void mousePressed(){
  //c = get(mouseX,mouseY); //quando clica pega a cor e coloca no fundo
}
