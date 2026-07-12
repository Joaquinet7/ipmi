PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PFont fuente;

int pantalla = 1;
int tiempoInicio;

float alpha = 0;
float posX = -300;
float escala = 16;
float posY = 520;

void setup(){

  size(640,480);

  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img1.png");
  img5 = loadImage("img2.png");
  img6 = loadImage("img3.png");
  
  fuente = loadFont("Arial-Black-24.vlw");
  textFont(fuente);

  tiempoInicio = millis();

}

void draw(){
background(0);
fill(255);
textAlign(CENTER);

// Pantalla 1
if (pantalla == 1) {
image(img1, 0, 0, width, height);

fill(180, 0, 0, alpha);
textSize(40);
text("TOKYO GHOUL Temporada 1", width/2, 420);

if (alpha < 255) {
  alpha += 2;
}

}

// Pantalla 2
else if (pantalla == 2) {
image(img2, 0, 0, width, height);
image(img4, 380, 200, 100, 350);

fill(180, 0, 0);
textSize(24);

text("Ken Kaneki era un estudiante universitario\ncon una vida normal...", posX, 430);

if (posX < width/2) {
  posX += 3;
}

}

// Pantalla 3
else if (pantalla == 3) {
image(img3, 0, 0, width, height);
image(img4, 380, 200, 100, 350);
image(img6, 180, 200, 150, 350);

fill(180, 0, 0);

textSize(escala);

text("Tras un encuentro con Rize, Kaneki recibe\nun trasplante de órganos que cambia su vida.", width/2, 430);

if (escala < 22) {
  escala += 0.1;
}
}

// Pantalla 4
else if (pantalla == 4) {
image(img2, 0, 0, width, height);
image(img5, 0, 0, width, height);

fill(180, 0, 0);

textSize(24);

text("Ahora debe vivir entre el mundo humano\ny el de los Ghouls.", width/2, posY);

if (posY > 430) {
  posY -= 2;
}
}

// Pantalla 5
else if (pantalla == 5) {

  image(img5, 0, 0, width, height);

  fill(180, 0, 0);

  textSize(34);

  text("Gracias por ver", width/2, 80);
  
  // Botón
  fill(180, 0, 0);
  rect(220, 350, 200, 60);

  fill(0);
  textSize(24);
  text("REINICIAR", width/2, 390);
}


if (millis() - tiempoInicio > 10000 && pantalla < 5) {

  pantalla++;

  tiempoInicio = millis();

  alpha = 0;
  posX = -300;
  escala = 20;
  posY = 520;

}

}

void mousePressed() {

  // Solo funciona en la pantalla 5
  if (pantalla == 5 &&
      mouseX > 220 &&
      mouseX < 420 &&
      mouseY > 350 &&
      mouseY < 410) {

    pantalla = 1;

    tiempoInicio = millis();

    alpha = 0;
    posX = -300;
    escala = 20;
    posY = 520;

  }

}
