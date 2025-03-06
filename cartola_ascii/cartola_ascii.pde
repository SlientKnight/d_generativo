PImage cartola;
color c = 255;
int modo = 1;
int intervalo = 5;
PFont Arial;

void setup() {
  background(255);
  size(600, 600);
  cartola = loadImage("cartola.png");
  cursor(CROSS);
  Arial = createFont("Source Code Pro", intervalo);
  textFont(Arial);
  image(cartola, 0, 0, width, height);
  loadPixels();
}

void draw() {
  background(255);
  char t = ' '; //DEFINE O ESPAÇO VAZIO
  for (int y = 0; y < height; y+=intervalo) { //LÊ CADA UM DOS PIXELS DA IMAGEM
    for (int x = 0; x < width; x+=intervalo) {
      int i = y * width + x;
      float brilho =  brightness(pixels[i]);
      int sombra = int(map(brilho, 0, 255, 4, 0));

      /*
       * dois modos diferentes de fazer a escolha de caracteres
       * uma usando uma sequencia de 'if'
       * outra usando a combinacao 'switch / case'
       */

      if (modo == 1) {
        if (sombra == 0) t = ' ';
        if (sombra == 1) t = '▘';
        if (sombra == 2) t = '▚';
        if (sombra == 3) t = '▙';
        if (sombra == 4) t = '█';
      } else if (modo == 2) {
        switch(sombra) {
        case 0:
          t = '▏';
          break;
        case 1:
          t = '▍';
          break;
        case 2:
          t = '▋';
          break;
        case  3:
          t = '▊';
          break;
        default:
          t = '█';
          break;
        }
      } else if (modo == 3) {
        switch(sombra) {
        case 0:
          t = ' ';
          break;
        case 1:
          t = '▒';
          break;
        case 2:
          t = '░';
          break;
        case  3:
          t = '▓';
          break;
        default:
          t = '█';
          break;
        }
      }
      fill(0);
      noStroke();
      text(t, x, y+intervalo);
    }
  }
}


void keyPressed(){
if (key == CODED) {
    if (keyCode == UP && modo < 3) {
     modo++;
    } else if (keyCode == DOWN && modo > 1) {
      modo--;
    } else if (keyCode == LEFT && intervalo > 1) {
      intervalo--;
    } else if (keyCode == RIGHT) {
      intervalo++;
    } if (keyCode == BACKSPACE
  }
}
//void mousePressed(){
//  c = get(mouseX,mouseY); //quando clica pega a cor e coloca no fundo
//}
