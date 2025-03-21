import processing.video.*;
Capture video;
int modo = 3;
int intervalo = 5;
PFont SourceCode;

void setup() {
  size(1280, 720);
  video = new Capture(this, 1280, 720);
  video.start();
  background(255);
  SourceCode = createFont("Times New Roman", intervalo);
  textFont(SourceCode);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  video.loadPixels();
  background(0);
  char t = ' ';
  for (int y = 0; y < height; y+=intervalo) { //VERIFICA OS PIXELS E O BRILHO DELES PRA DEFINIR O UNICODE
    for (int x = 0; x < width; x+=intervalo) {
      int i = y * width + x;
      float brilho =  brightness(video.pixels[i]);
      int sombra = int(map(brilho, 0, 255, 4, 0));

      if (modo == 1) {
        if (sombra == 0) t = ' ';
        if (sombra == 1) t = '▘';
        if (sombra == 2) t = '▚';
        if (sombra == 3) t = '▙';
        if (sombra == 4) t = '█';
      } else if (modo == 2) {
        if (sombra == 0) t = '▏';
        if (sombra == 1) t = '▃';
        if (sombra == 2) t = '3';
        if (sombra == 3) t = '▛';
        if (sombra == 4) t = '▉';
      } else if (modo == 3) {
        if (sombra == 0) t = ' ';
        if (sombra == 1) t = '▒';
        if (sombra == 2) t = '░';
        if (sombra == 3) t = '▓';
        if (sombra == 4) t = '█';
        }
      
      fill(0,200,10); // verde
      noStroke();
      text(t, x, y+intervalo);
    }
  }
}

void keyPressed(){ // ALTERNA ENTRE OS MODOS DE CAMERA PELAS SETAS DO TECLADO
if (key == CODED) {
    if (keyCode == UP && modo < 3) {
     modo++;
    } else if (keyCode == DOWN && modo > 1) {
      modo--;
    } else if (keyCode == LEFT && intervalo > 1) {
      intervalo--;
    } else if (keyCode == RIGHT) {
      intervalo++;
    }
  }
}

/*
 UNICODE BLOCKS
 U+2580  ▀  Upper half block
 U+2581  ▁  Lower one eighth block
 U+2582  ▂  Lower one quarter block
 U+2583  ▃  Lower three eighths block
 U+2584  ▄  Lower half block
 U+2585  ▅  Lower five eighths block
 U+2586  ▆  Lower three quarters block
 U+2587  ▇  Lower seven eighths block
 U+2588  █  Full block
 U+2589  ▉  Left seven eighths block
 U+258A  ▊  Left three quarters block
 U+258B  ▋  Left five eighths block
 U+258C  ▌  Left half block
 U+258D  ▍  Left three eighths block
 U+258E  ▎  Left one quarter block
 U+258F  ▏  Left one eighth block
 U+2590  ▐  Right half block
 U+2591  ░  Light shade
 U+2592  ▒  Medium shade
 U+2593  ▓  Dark shade
 U+2594  ▔  Upper one eighth block
 U+2595  ▕  Right one eighth block
 U+2596  ▖  Quadrant lower left
 U+2597  ▗  Quadrant lower right
 U+2598  ▘  Quadrant upper left
 U+2599  ▙  Quadrant upper left and lower left and lower right
 U+259A  ▚  Quadrant upper left and lower right
 U+259B  ▛  Quadrant upper left and upper right and lower left
 U+259C  ▜  Quadrant upper left and upper right and lower right
 U+259D  ▝  Quadrant upper right
 U+259E  ▞  Quadrant upper right and lower left
 U+259F  ▟  Quadrant upper right and lower left and lower right
 
 */
