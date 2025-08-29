int forma;

void setup() {
  size(600, 600);
  background(0);
  forma = 0;
}

void draw() {
}

void mousePressed() {

  forma = int(random(2)); // Cambia entre circulo y cuadrado

  fill(255);
  noStroke();

  if (forma == 0) {
    ellipse(mouseX, mouseY, 100, 100);
  } else if (forma == 1) {
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 100);
  }
}
