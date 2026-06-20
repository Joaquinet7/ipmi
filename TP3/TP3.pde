//https://youtu.be/aARsLZCzjAQ

PImage img;
float tam = 50;
boolean mouseSeMovio = false;
float angulo =0;

void setup () {
  size(800, 400);
  img = loadImage("25.jpeg");
  mouseSeMovio = false;
}



void draw() {
if(mouseSeMovio) {
    tam = map(mouseX, 0, width, 20, 70);
  }

  background(128);

  image(img, 0, 0, 400, 400);

  pushMatrix();

  translate(400, 0);

  for(int fila = 0; fila < 20; fila++) {

    for(int columna = 0; columna < 20; columna++) {

      pushMatrix();

      translate(
        columna * tam + tam/2,
        fila * tam + tam/2
      );

      rotate(angulo);

      modulo(
        -tam/2,
        -tam/2,
        tam
      );

      popMatrix();

    }
  }

  popMatrix();
}


void modulo(float x, float y, float tam) {

  fill(128);
  rect(x, y, tam, tam);

  fill(0);

  rect(x, y + tam/2, tam/2, tam/2);

  triangle(
    x + tam/2, y + tam/2,
    x, y + tam/2,
    x + tam/2, y
  );

  triangle(
    x + tam,
    y + tam/2,
    x + tam/2,
    y + tam,
    x + tam/2,
    y + tam/2
  );

  fill(255);

  rect(
    x + tam/2,
    y,
    tam/2,
    tam/2
  );
}

void mousePressed() {

  if(mouseButton == LEFT) {

    angulo += radians(10);

  } else {

    angulo -= radians(10);

  }
}

void mouseMoved() {

  mouseSeMovio = true;

  tam = map(
    mouseX,
    0,
    width,
    20,
    70
  );
}


void keyPressed() {

  if(keyCode == ENTER) {

    tam = 50;
    angulo = 0;

  }

}
