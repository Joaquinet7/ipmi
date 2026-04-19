PImage img;

void setup () {
  size(800, 400);
  background(90, 100, 20);
  img = loadImage("pinturarenacimiento.jpg");
  noStroke();
  
}


void draw () {
  background(90, 100, 20);
image(img, 0, 0, 400, 400);  
  
  //cuerpo
    fill(200, 75, 0);
  ellipse(600, 300, 400, 300);
  rect(400, 300, 400, 300);
  triangle(475, 180, 420, 200, 400, 300);
  triangle(710, 190, 775, 185, 840, 400);
  triangle(500, 170, 650, 125, 700, 170);

  
  //cabeza
     fill(245, 210, 175);
  rect(550, 110, 85, 60);
  fill(65, 35, 20);
  fill(245, 210, 175);
  ellipse(590, 100, 117, 100);
    fill(65, 35, 20);
  rect(550, 50, 100, 25);
  triangle(600, 50, 650, 50, 645, 100);
  triangle(650, 50, 645, 110, 670, 90);

  //gorro
    fill(200, 75, 0);
    triangle(550, 50, 600, 25, 650, 50);
    triangle(540, 70, 550, 40, 590, 50);
    triangle(650, 70, 670, 40, 630, 50);

    
  //brazos
    fill(255, 255, 255);
  rect(550, 350, 200, 75);
  rect(400, 350, 75, 75);
  fill(245, 210, 175);
  triangle(475, 350, 475, 400, 550, 350);
  triangle(475, 400, 550, 350, 550, 400);
  
  
  //
  fill(255);
  ellipse(565, 95, 10, 10);
  ellipse(610, 95, 10, 10);
  fill(235, 195, 160);
  triangle(580, 115, 590, 95, 600, 115);
  fill(245, 210, 175);
  ellipse(595, 170, 85, 30);
  fill(90, 100, 20);
  ellipse(528, 90, 20, 30);
  fill(65, 35, 20);
  ellipse(545, 80, 23, 30);
  
  
  fill(0);
    text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);

}
