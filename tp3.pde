//no me salio la secuencia que tiene la ilusion optica orginal(los rombos negros pequeños), esto fue lo que salio:

int i=0, j=0;
int DEGREES;
int many = 390; //cuadricula rotada fondo blanco
    
boolean RIGHT;
int k=0, l=0;
int x=0;

void setup(){
  size(390,390);
    rectMode(CENTER);
    noFill();
   rectMode(DEGREES);  
            }
void draw(){
 noStroke();
  for(k= 0;k< 24; k++){
    for(l =0;l< 24; l= l+1){
  if((k+l) % 2==0){
   fill(130);
  }else{ 
    fill(190);
  } 
 noStroke();
  rect(l*30,k*30,50,50);
  fill(0);
  textSize(17);
   text("clikear/mantener presionado el mause y la letra A ",18,8,500,80);
    }}   
             for (i = 38; i < many; i+= 30){    //Cuadricula blaco fondo
                    for (j = 60; j < many; j+=30){
                      if((i+j) % 2==0){
                        translate(i,j);
                        rotate(40);
                         println(many);
       
                              if (mousePressed== true){ 
                            if (keyPressed){
                              if (key=='a')
                              x=x-5;

                         float mr =random(180,255);
 float mg =random(0,255);
 float mb =random(0,255);
 fill(mr,mg,mb,255);                    
                              
                        //fill(255);
                        rect(i*0,j*0, 12, 12);                  
                            }
                        fill(0);     ////     
                        //Cuadrucula pequñas
                        rect(6,6,6,6); //izq
                        fill(0);
                        rect(6,6,-6,-6);  //derec
                        println(true);
                        resetMatrix();
                          }else { 
                         fill(255);
                        rect(i*0,j*0, 12, 12);  
                        fill(0); //fill(220,0,30);
                        rect(6,12,-6,-6); //arriba
                       
                        float nx =map(mouseX,0,height,0,255); //colores del mouse
                        float ny = map(mouseY,width,0, 220,30);
                            fill(ny,0,nx);
                        rect(12, 6,-6,-6); //abajo 
                          println(30);               
                       resetMatrix();
  }}}} }

 void keyPressed(){
   if(keyPressed==RIGHT){
     i= 3;
     many=10;
     x=3; 
   } }
