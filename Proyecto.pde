color fondo, figura;
int forma;

void setup() {
  size(600, 600);
  cambiarColor();
  background(fondo);
  forma = 0;
}

void draw() {
}

void mousePressed() {
  cambiarColor();
  background(fondo);

  forma = int(random(2)); // Cambio de forma

  fill(figura);
  noStroke();

  if (forma == 0) {
    ellipse(mouseX, mouseY, 100, 100);
  } else if (forma == 1) {
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 100);
  }
}


void cambiarColor() {
  fondo = color(random(255), random(255), random(255));
  figura = color(255-red(fondo), 255-green(fondo), 255-blue(fondo)); //Color opuesto al background
}
