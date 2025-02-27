/*
movimenta a joaninha
pra seguir o mouse
*/
float x = mouseX;

void setup(){
  size(400,400);
  background(110, 19, 171);
  noStroke();
  frameRate(24);
}

void draw(){
  
  background(110, 19, 171);//limpa o fundo
  x = mouseX;
  //corpo da joaninha
  stroke (17, 38, 92);//azul escuro
  strokeWeight(15);
  fill(38, 71, 153); //azul claro
  circle(x,mouseY,140);
  
  //olhos da joana
  noStroke();
  fill (17, 38, 92); //AZUL ESCURO
  arc(x,mouseY-73,173,112, PI/4, 3*PI/4, PIE);
  fill(38, 71, 153); //azul claro
  circle(x-25,mouseY-50,35);
  circle(x+25,mouseY-50,35);
  fill (17, 38, 92); //AZUL ESCURO
  
  //por cima do olho beirada
  stroke (17, 38, 92);//azul escuro
  strokeWeight(15);
  noFill();
  circle(x,mouseY,140);
  
  //outras bolinhas da joaninha
  noStroke();
  fill (17, 38, 92); //AZUL ESCURO
  circle(x+30,mouseY+55,23);
  circle(x-30,mouseY+55,23);
  circle(x+54,mouseY+25,23);
  circle(x-54,mouseY+25,23);
  circle(x-60,mouseY-10,23);
  circle(x+60,mouseY-10,23);
  
  //coração
  circle(x-15,mouseY+18,35);
  circle(x+15,mouseY+18,35);
  //triangle(x-23,mouseY+5,x+23,mouseY+5,x,mouseY-15);
  //fill(255,255,255,100);
  //float rot = map(mouseX,0,399,0,2*PI);
  //arc(x,mouseY-15, 80, 80,rot,11*PI/6, PIE);
  arc(x,mouseY-15,80,80, 0.65, 2.46, PIE);
  //fill (17, 38, 92); //AZUL ESCURO
  //0.64 x 2.45
  
  //linha da flecha
  stroke(17, 38, 92);
  strokeWeight(5);  
  line(x,mouseY+10,x,mouseY+70);
  
  //println(rot); //mostra no log o valor de rad do mouse x
}

void keyPressed(){
  //tentando desativar seguir o mouse e voltar a seguir
  if (x == mouseX) { 
    x = width/2;
  } else {
    x = mouseX;
  }
}
