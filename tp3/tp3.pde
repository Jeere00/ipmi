int numStripes = 10;
int numCircles = 6;
float[] radios;
boolean invertido = false;

void setup() {
  size(800,400);
  radios = new float[numCircles];
  reiniciarRadios();
}

void draw() {
  background(255);
  
  // Dibujo lado izquierdo
  pushMatrix();
  translate(0, 0);
  dibujarOpArt(0, width / 2);
  popMatrix();
  
  // Dibujo lado derecho
  pushMatrix();
  translate(width / 400, 0);
  dibujarOpArt(width / 2, width);
  popMatrix();
}


// Función que NO retorna valor
void dibujarOpArt(float x0, float x1) {
  float w = x1 - x0;
  float h = height;
  float stripeH = h / float(numStripes);
  
  // Dibujar lineas
  for (int i = 0; i < numStripes; i++) {
    if ((i % 2 == 0 && !invertido) || (i % 2 == 1 && invertido)) {
      fill(0);
    } else {
      fill(255);
    }
    rect(x0, i * stripeH, w, stripeH);
  }

  // círculos 
  for (int i = numCircles - 1; i >= 0; i--) {
    fill((i % 2 == 0) ^ invertido ? 255 : 0);  // Cambia con booleano
    float r = radios[i];
    ellipse(x0 + w / 2, height / 2, r, r);
  }
}

// Función que RETORNA un valor
float calcularRadio(int i) {
  return map(i, 0, numCircles - 1, 50, min(width, height));
}

// Reinicio
void reiniciarRadios() {
  for (int i = 0; i < numCircles; i++) {
    radios[i] = calcularRadio(i) + random(-10, 10);
  }
}

// ------------- EVENTOS -------------

void keyPressed() {
  if (key == ' ') {
    invertido = !invertido;  // Cambia patrón de color
  } else if (key == 'r' || key == 'R') {
    reiniciarRadios();  // Reinicia los radios con random
  }
}
