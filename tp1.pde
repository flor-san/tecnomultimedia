void setup() {
 size(500,500);
noFill();

}


void draw() {
  background(255);
 fill(#111112); // mouse
//text("MouseX: " + mouseX + " y MouseY:" + mouseY, 50, 485);
//text("(" + mouseX + "," + mouseY + ")", 50, 300);
 fill(0);

//triangle(255,253,70,341,100,379); // base
ellipse(250,250,20,20); //base


fill(0,227,255);//fill(8,111,252);
triangle(255,253,70,341,158,420);

fill(29,5,255);
triangle(255,253,50,228,70,340);

fill(171,5,255);
triangle(255,253,97,132,50,228);

fill(255,5,164);
triangle(255,253,206,92,97,132);

fill(255,5,14);
triangle(255,253,327,105,206,92);

fill(255,112,3);
triangle(255,253,404,210,327,105);


fill(255,247,3);
triangle(255,253,396,343,404,210);


fill(119,255,3);
triangle(255,253,289,433,396,343);

fill(13,165,3);
triangle(255,253,158,421,289,433);
}
