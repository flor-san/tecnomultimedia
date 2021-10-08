
int estado;
float distancia, distancia2, distancia3;
int fps;
int posX, posY, posX2, posY2, posX3, posY3;
int alto, ancho, alto2, ancho2;

int incioyfinal = 2;
PImage [] incios = new PImage [2];
String []inci = {"autor.png, anime.png"}; 

int estadoscreditos=0;
int creditos = 4;
PImage [] personajescreditos = new PImage [4];
String []creditosP = {"creditos.png, creditos2.png, creditos3.png, creditos4.png"}; 


int pantallai = 0;
PImage [] pantalla = new PImage[8];
String [] pant = {"inicio.png","pant1.png","pant2.png","pant3.png","pant4.png","pant5.png","pant6.png","pant7.png"};

 int caminoprimero;
int caminoi = 0;
int Caminouno = 3;  // comienza en la pantalla 1
PImage [] caminoA = new PImage[3];
String [] uno = {"1a.png", "1b.png","1c.png"};

int Caminodos = 4; // comienza n la pantalla 3
PImage [] caminoB = new PImage[4];
String [] dos = {"2a.png, 2b.png,2c.png,2d.png"};

int Caminotres = 4; // comienza en la pantallas 4
PImage [] caminoC = new PImage[4];
String [] tres = {"3a.png, 3b.png,3c.png,3d.png"};


String [] lineas;
PFont font, normalF;

int variableuno,variabledos;
void setup(){
  size (400,300);
  textSize(20);
  lineas = loadStrings ("lineastp4.txt");
for (int i = 0; i < 8; i++){   // pantallas oginal
  pantalla[i] = loadImage(pant[i]);
 font = loadFont ("Algerian-25.vlw");
  normalF = loadFont ("Arial-BoldItalicMT-15.vlw");   
}}
 
void draw(){
   fps=fps+1;
  if (fps==15) {
    fps=0;
  }
   distancia= dist (390, 150, mouseX, mouseY);
  distancia2= dist(20, 150, mouseX, mouseY); 
  
    if (estado == 0){   //inicio
    image(pantalla[0],0,0,width,height);
       textSize(20);
       textFont(font);
      text(lineas[1], 20, 230);  
    }
  if (estado == 1){ // pantalla
    image(pantalla[1],0,0,width,height);
      textSize(10);
      textFont(normalF);
    text(lineas[3], 20, 245);
    text(lineas[4], 20,260);
    text(lineas[5], 20,275);
    text(lineas[6], 20,290); 
}

    if (estado == 2){
    image(pantalla[2],0,0,width,height);
    text(lineas[7], 20, 228);
    text(lineas[8], 20, 245);
    text(lineas[9], 20, 260);
    text(lineas[10], 20, 275);
    text(lineas[11], 20, 290);
    }
    if (estado == 3){
    image(pantalla[3],0,0,width,height);
    text(lineas[12], 20, 228);
    text(lineas[13], 20, 245);
    text(lineas[14], 20, 261);
    text(lineas[15], 20, 275);
    text(lineas[16], 20, 288);
    }
    if (estado == 4){
    image(pantalla[4],0,0,width,height);
    text(lineas[18], 20, 228);
    text(lineas[19], 20, 245);
    text(lineas[20], 20, 261);
    text(lineas[21], 20, 275);
    }
    if (estado == 5){
    image(pantalla[5],0,0,width,height);
    text(lineas[23], 20, 228);
    text(lineas[24], 20, 245);
    text(lineas[25], 20, 261);
    text(lineas[26], 20, 275); 
    }
    if (estado == 6){
    image(pantalla[6],0,0,width,height);
    text(lineas[28], 20, 228);
    text(lineas[29], 20, 245);
    text(lineas[30], 20, 261);
    text(lineas[31], 20, 275);
    }
    if (estado== 7){
    image(pantalla[7],0,0,width,height);
    text(lineas[33], 20, 228);
    text(lineas[34], 20, 245);
    text(lineas[35], 20, 261);
    text(lineas[36], 20, 275);
 
    if (mousePressed);
      estado= 0;
    } 
    if (distancia <= 20) {
    if (mousePressed)
      if (fps==7)
        estado= estado+1;
    }
 if (distancia2 <=20) {
    if (mousePressed)
      if (fps==7)
        estado= estado-1;
}
 stroke(0);
  fill   (180, 0, 0, 10);
  
  fill(255);
  noStroke();
  rect (370, 146, 17, 10);
  triangle(385, 144, 385, 158, 394, 151);
  rect(15, 146, 17, 10);
  triangle(15, 144, 15, 158, 8, 151);
  } 
 
