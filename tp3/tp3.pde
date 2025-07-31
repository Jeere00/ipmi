
//Video:https://youtu.be/vsKe88uxyOc

PImage ilusion;
int mod = 57;

// Tamaños de cada elipse
float t1 = 35, t2 = 35, t3 = 35, t4 = 35, t5 = 35;
float t6 = 35, t7 = 35, t8 = 35, t9 = 35, t10 = 35;
float t11 = 30, t12 = 22, t13 = 27, t14 = 35, t15 = 35, t16 = 35;
float t17 = 27, t18 = 27, t19 = 27, t20 = 35, t21 = 40, t22 = 40;

void setup() {
  size(800, 400);
  ilusion = loadImage("ilusion.png");
}

void draw() {
  background(255);

  // Imagen original a la izquierda
  image(ilusion, 0, 0, 400, 400);

  fondoDegrade();

  // Cuadrícula azul
  for (int i = 397; i < 800; i += mod) {
    for (int j = 0; j < 397; j += mod) {
      strokeWeight(7);
      stroke(50, 88, 170);
      noFill();
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

  // Círculos blancos con interacción
  t1 = elipseInteractiva(426, 35, 35, t1);
  t2 = elipseInteractiva(489, 30, 35, t2);
  t3 = elipseInteractiva(547, 30, 35, t3);
  t4 = elipseInteractiva(658, 24, 35, t4);
  t5 = elipseInteractiva(715, 24, 35, t5);

  t6 = elipseInteractiva(547, 87, 35, t6);
  t7 = elipseInteractiva(715, 81, 35, t7);

  t8 = elipseInteractiva(541, 149, 35, t8);
  t9 = elipseInteractiva(597, 149, 35, t9);
  t10 = elipseInteractiva(654, 149, 35, t10);

  t11 = elipseInteractiva(435, 201, 30, t11);
  t12 = elipseInteractiva(496, 200, 22, t12);

  t13 = elipseInteractiva(493, 257, 27, t13);
  t14 = elipseInteractiva(598, 251, 35, t14);
  t15 = elipseInteractiva(654, 251, 35, t15);
  t16 = elipseInteractiva(712, 251, 35, t16);

  t17 = elipseInteractiva(598, 303, 27, t17);
  t18 = elipseInteractiva(654, 303, 27, t18);
  t19 = elipseInteractiva(712, 303, 27, t19);
  t20 = elipseInteractiva(489, 314, 35, t20);

  t21 = elipseInteractiva(487, 371, 40, t21);
  t22 = elipseInteractiva(711, 367, 40, t22);
}

void fondoDegrade() {
  for (int x = 400; x < width; x += 1) {
    for (int y = 0; y < height; y += 1) {
      float d = dist(mouseX, mouseY, x, y);
      float maxD = dist(400, 0, width, height); 
      float factor = constrain(map(d, 0, maxD, 0, 1), 0, 1);

    
      int r = int(map(factor, 0, 1, 200, 255));
      int g = int(map(factor, 0, 1, 100, 255));
      int b = int(map(factor, 0, 1, 150, 255));

      noStroke();
      fill(r, g, b);
      rect(x, y,10, 10);
    }
  }
}



// Función de interacción con las elipses blancas
float elipseInteractiva(float x, float y, float base, float actual) {
  if (dist(mouseX, mouseY, x, y) < actual / 2) {
    fill(82, 106, 255,150); 
    if (actual < base + 15) actual += 1.5;
  } else {
    fill(255); 
    if (actual > base) actual -= 1.5;
  }
  noStroke();
  ellipse(x, y, actual, actual);
  return actual;
}

// Tecla R para reiniciar los tamaños
void keyPressed() {
  if (key == 'r' || key == 'R') {
    t1 = t2 = t3 = t4 = t5 = 35;
    t6 = t7 = t8 = t9 = t10 = 35;
    t11 = 30; t12 = 22; t13 = 27;
    t14 = t15 = t16 = 35;
    t17 = t18 = t19 = 27;
    t20 = 35;
    t21 = t22 = 40;
  }
}
