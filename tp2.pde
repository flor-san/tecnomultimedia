PImage imagenoficial, imagen3, imagen4, imagen5, imagen6,imagen7, imagen8, imagen9;
PImage mapa0, imagen10, imagen11,imagen12, imagen13;
String titulo1 = "La isla del tesoro";
String miTexto = "";
PFont titulo, nombres, personajes;
int posY =  round(random(5,250));
int pantalla = 0;
color colorFondo = (0);
float mapeado = 255;
void setup() {
  size(400, 400);
  posY  = height;
   titulo = loadFont("GoudyStout-48.vlw");
  textAlign(CENTER, TOP);
  textFont(titulo);
  nombres = loadFont("Dialog.plain-48.vlw");
  textAlign(CENTER, TOP);
  textFont(nombres);
  personajes = loadFont("BookAntiqua-Bold-40.vlw");
  textAlign(CENTER, TOP);
  textFont(personajes);
  
  imagenoficial= loadImage("imagenoficial.jpg");
  imagen3= loadImage("imagenjim.jpg");
  imagen4 = loadImage("dr livesey.jpg");
  imagen5 = loadImage("JOHN SILVER.jpg");
  imagen6 = loadImage("capitan Alexander smollet.jpg"); 
  imagen7 = loadImage("squire trelawney.jpg");
  imagen8 = loadImage("billy bones.jpg");
  imagen9 = loadImage("ben gunn.png");

  mapa0 =loadImage("mapa0.jpg");
  imagen10= loadImage ("cofre1m.png");
  imagen11= loadImage ("cofre2.png");
  imagen12= loadImage ("cofre3.png");
  imagen13= loadImage ("cofre4.png");
 
}
void draw() { 
  background(colorFondo);
  mapeado = map(posY, 600, 40, 30, 259);
  if (posY >= 0 && pantalla < 11) {
    posY -= 3; //velocidad del texto
  } else {
    posY = height;
  } 
  if (posY <= 0) {
    pantalla++;
  }
  if (pantalla == 0) {
    colorFondo = color(255);
    image(imagenoficial,0,0,width,height);
    fill(#FFE600, mapeado);
    textFont(titulo);
    textSize (16);
    titulo1 = "La isla del tesoro";
     text(titulo1, 190, 270);
  }
  if (pantalla == 1) {
    fill(255);
    colorFondo = color(255, 0, 0);
    image(imagen3,0,0, width, height);
    textFont(personajes);
    textSize(25);
    miTexto = "Jim Hawkins";

}    else if (pantalla == 2) {
       fill(7,255, mapeado);
       image(imagen4,0,0,400, 400); 
       textFont(personajes);
       textSize(25);
       miTexto = "Doctor David Livesey \n       \n    John Silver ";
       image(imagen5,0,0, width/2,height);

} else if (pantalla == 3 || pantalla == 4) {
    fill(255,142,3);
    image(imagen6,0,0,400, 400); 
    image(imagen7,0,0, width/2, height);
    textFont(personajes);
    textSize(25);
    miTexto = "Capitan Alexander Smollet \n    \n    Squire Treanaway"; 

} else if (pantalla == 5) {
  fill(246,255,0, mapeado);
  image(imagen9,0,0,800,600);
  image(imagen8,0,0, width/2, height); 
  textFont(personajes);
  textSize(25);
   miTexto = " Billy Bonnes \n      \n    Ben Gunn "; 
 
   } else if(pantalla == 6){ 
     fill(255);
     colorFondo = color(0); 
     textFont(nombres);
     textSize(13);
     miTexto = " La isla del tesoro (película de 1950) \n CAST \n Bobby Driscoll ... Jim Hawkins Robert \n Newton ... Long John Silver \n Basil Sydney ... Capitan Smollet \n Walter Fitzgerald ... Squire Trelawney \n Denis O'Dea ... Doctor Livesy \n Finlay Currie ... Capitan Billy Bones \n Ralph Truman ... George Merry \n Geoffrey Keen ... Israel Hands \n Geoffrey Wilkinson ... Ben Gunn \n John Laurie ... Blind Pew \n Francis De Wolff ... Black Dog \n David Davies ... Mr. Arrow \n John Gregson ... Redruth \n Andrew Blackett ... Gray \n William Devlin ... Morgan \n Howard Douglas ... Williams \n Harry Locke ... Haggott \n Sam Kydd ... Cady \n Stephen Jack ... Job \n Harold Jamieson ... Scully";
 
} else if (pantalla == 7) {
  fill(255);
  colorFondo = color(0);
  textFont(nombres);
  textSize(13);
  miTexto = "David Blake Kelly ... Bolen (as Diarmuid Kelly) \n Reginald Drummond ... Vane \n Gordon Mulholland ... Durgin \n Patrick Troughton ... Roach \n Jim O'Brady ... Wolfe \n Chris Adcock ... Pike \n Tom Lucas ... Upson \n Leo Phillips ... Spotts \n Eddie Moran ... Bart \n Bob Head ... Tardy \n Ken Buckle ... Joyce \n Paddy Brannigan ... Hunter \n Jack Arrow ... Norton \n Freddy Clark ... Bray";
   
   } else if (pantalla == 8) {
    fill(255);
    colorFondo = color(0);
    textFont(nombres);
    textSize(12);
    miTexto =  "Dirección  BYRON HASKIN \n \n Producción  PERCE PEARCE \n \n Guion   LAWRENCE EDWARD WATKIN \n \n  Basada en 'La isla del tesoro' de ROBERT LOUIS STEVENSON \n  \nMúsica  CLIFTON PARKER \n \n Fotografía  FREDDIE YOUNG \n \n Montaje ALAN JAGGS \n COMPAÑIAS \n \n Productora \n \n The Walt Disney Company \n \n Distribución \n \n RKO Pictures \n\n Netflix \n\n Disney+";
 
} else if (pantalla == 9) {
  image(mapa0,0,0,width,height); 
  image(imagen10,289,98,50,50);
   textFont(personajes);
  textSize(20);
  fill(255);
   text("Toca el tesoro",120,18, 170, 60);
  miTexto = " ";
  
}    if (mousePressed) {
     image(imagen13,98,78,220,220);
     textFont(titulo);
     textSize(16);
      fill(#FFE600, mapeado);
      text("Robert Louis Stevenson",120,138, 170, 60);
      posY =  round(random(90,600));
     
 } else if (pantalla == 10) {
   colorFondo = color(0);
   textFont(nombres);
   textSize(12);
   fill(255);
   miTexto = "Trabajo Practico #2: Animacion de creditos. \n \n Pelicula: La isla del tesoro -  Rober Louis Stevenson. \n\n Estudiante: Vargas, Maria Florencia ";

   } else if(pantalla == 11){
     pantalla = 0;
     miTexto = " ";
  } 
  text(miTexto, width/2, posY);
  println("PosY: ", posY);
  println("Pantalla: ", pantalla);
}
