PFont miTexto, miTexto2;
PImage img1, img2, img3, img4, img5, img6, img7,img8,img9;

int escena = 0;
int contador = 0;

float tamFont = 10;
float posY = 480;
int opacidad = 0;
int posX = 0;

void setup() {
  size(640, 480);
  miTexto = loadFont("FranklinGothic-MediumItalic-48.vlw");
  miTexto2 = loadFont("ComicSansMS-48.vlw");

  img1 = loadImage("lostrescerditos.jpg");
  img2 = loadImage("armadocasadepaja.jpg");
  img3 = loadImage("armadocasamadera.jpg");
  img4 = loadImage("armadocasaladrillo.jpg");
  img5 = loadImage("casitapaja.jpg");
  img6 = loadImage("loborompecasamadera.jpg");
  img7 = loadImage("casitadeladrillos.jpg");
  img8 = loadImage("trescerditoscontentos.jpg");
  img9 = loadImage("boton.png");
}

void draw() {
  background(0);
  textFont(miTexto2);
  fill(255);

  if (escena == 0) {
    image(img1, 0, 0, width, height);
    fill(0);
    textSize(tamFont);
    text("Había una vez tres chanchitos que vivían con su madre. Cuando crecieron, ella les dijo que era hora de salir al mundo y construir sus propias casas. ",50, 300, 540, 160);
   if (tamFont < 22) tamFont += 0.05;

} else if (escena == 1) {
    image(img2, 0, 0, width, height);
    textSize(22);
    text("El primer chanchito, que era el más perezoso, decidió construir su casa de paja. Era rápido y fácil de hacer, así que enseguida terminó y se puso a descansar y jugar." ,posX, 320, 540, 160);
    if (posX < 70) posX += 1;

} else if (escena == 2) {
    image(img3, 0, 0, width, height);
    fill(255, opacidad);
    textSize(30);
    text(" El segundo la hizo de madera. Tardó un poco más, pero tampoco era muy fuerte. " ,50, 100, 540, 160);
    if (opacidad < 255) opacidad += 2;
    
   textFont(miTexto);

} else if (escena == 3) {
    image(img4, 0, 0, width, height);
    textSize(22);
    text("El tercero construyó su casa de ladrillos. Trabajó mucho, pero quedó muy sólida.", 50, posY, 540, 160);
    if (posY > 300) posY -= 1;

} else if (escena == 4) {
    image(img5, 0, 0, width, height);
    fill(0);
    textSize(tamFont);
    text("Cuando el lobo llegó, sopló y destruyó la casa de paja fácilmente.", 50, 100, 540, 160);
   if (tamFont < 22) tamFont += 0.1;

} else if (escena == 5) {
    image(img6, 0, 0, width, height);
    textSize(22);
    text("Luego hizo lo mismo con la de madera, que también cayó. Los dos chanchitos escaparon a la casa de ladrillos." ,posX, 390, 540, 160);
    if (posX < 70) posX += 1;
    
    } else if (escena == 6) {
    image(img7, 0, 0, width, height);
    textSize(22);
    text("El lobo no pudo derribar la casa de ladrillos. Así, los tres chanchitos se salvaron gracias al trabajo del más responsable", 50, posY, 540, 160);
    if (posY > 100) posY -= 1;
 
    
    } else if (escena == 7) {
    image(img8, 0, 0, width, height);
    fill(0);
    textSize(22);
    text("El lobo intentó entrar por la chimenea, pero el tercer chanchito lo esperaba con una olla de agua caliente. El lobo cayó dentro, se quemó y escapó para no volver nunca más. Así, los tres chanchitos vivieron tranquilos y felices.", 50, posY, 540, 160);
    if (posY > 300) posY -= 1;
    
  


    // Botón de reinicio
    fill(0);
    stroke(255);
    strokeWeight(2);
    image(img9,500, 420, 100, 40);
    fill(255);
    
   
  }

  if (escena < 7) {
    contador++;
    if (contador > 500) {
      escena++;
      tamFont = 10;
      posY = 480;
      opacidad = 0;
      posX = 0;
      contador = 0;
    }
  }
}

void mouseClicked() {
  if (escena == 7) {
    if (mouseX > 500 && mouseX < 600 && mouseY > 420 && mouseY < 460) {
      escena = 0;
      tamFont = 10;
      posY = 480;
      opacidad = 0;
      posX = 0;
      contador = 0;
    }
  }
}
