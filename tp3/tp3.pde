PImage ilusion;
int mod = 57;

void setup() {
  size(800, 400);
  ilusion = loadImage("ilusion.png");
}

void draw() {
  background(255);
  image(ilusion, 0, 0, 400, 400);

  // cuadricula
  for (int i = 397; i < 800; i += mod) {
    for (int j = 0; j < 397; j += mod) {
      fill(255);
      strokeWeight(7);
      stroke(50, 88, 170);
      rect(i, j, mod, mod);
    }
  }

  // Círculos azules
  noStroke();
  fill(50, 88, 170);
  for (int i = 426; i < 800; i += mod) {
    for (int j = 29; j < 400; j += mod) {
      ellipse(i, j, 50, 50);
    }
  }

  // Círculos blancos
  elipseInteractiva(426, 35, 35);
  elipseInteractiva(489, 30, 35);
  elipseInteractiva(547, 30, 35);
  elipseInteractiva(658, 24, 35);
  elipseInteractiva(715, 24, 35);
  
  elipseInteractiva(547, 87, 35);
  elipseInteractiva(715, 81, 35);
  
  elipseInteractiva(541, 149, 35);
  elipseInteractiva(597, 149, 35);
  elipseInteractiva(654, 149, 35);
  
  elipseInteractiva(435, 201, 30);
  elipseInteractiva(496, 200, 22);
  
  elipseInteractiva(493, 257, 27);
  elipseInteractiva(598, 251, 35);
  elipseInteractiva(654, 251, 35);
  elipseInteractiva(712, 251, 35);
  
  elipseInteractiva(598, 303, 27);
  elipseInteractiva(654, 303, 27);
  elipseInteractiva(712, 303, 27);
  elipseInteractiva(489, 314, 35);
  
  elipseInteractiva(487, 371, 40);
  elipseInteractiva(711, 367, 40);


}

//  FUNCIONES

// Función CON retorno: detecta si el mouse está encima del circulo
boolean mouseSobre(float x, float y, float r) {
  return dist(mouseX, mouseY, x, y) < r / 2;
}

// Función SIN retorno: dibuja elipse con efecto si el mouse está encima
void elipseInteractiva(float x, float y, float r) {
  if (mouseSobre(x, y, r)) {
    fill(121,12,12);           // cambio de color
    ellipse(x, y, r + 15, r + 15); // se agranda 
  } else {
    fill(255);
    ellipse(x, y, r, r);           // tamaño normal
  }
}

// Reinicio 
void keyPressed() {
  if (key == 'r' || key == 'R') {
    redraw(); 
  }
}
