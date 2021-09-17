// Pido disculpas por entregar esto, me he desordenado con las materias.

int imagesm= 7;
int imagesi= 0;
PImage []images = new PImage[imagesm];
String[] imagenombres = {"pant1.png","pant2.png","pant3.png","pant4.png","pant5.png","pant6.png","pant7.png"};

int estados;
String [] lineas;
int indicedetextos;

void setup(){
  size(400,300);
  for (int i = 0; i < images.length; i++){
    images[i]= loadImage(imagenombres[i]);
  
  }}
  
  void draw(){
    if (estados== 0){
    image(images[imagesi],0,0,width,height);
   
   text(" En la posada de Jim", 50,100);
    textSize(10);
    
     } else if (estados == 1) {
     image(images[imagesi],0,0,width,height);
     }
  }
  void mousePressed(){
     imagesi++;
    if(imagesi >= images.length){
      imagesi =0;
    }}
