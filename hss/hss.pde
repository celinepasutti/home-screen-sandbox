//3x3 hs

//declaration-------------------------------------------
PImage tile1;
PImage tile2;
PImage tile3;
PImage tile4;
PImage tile5;
PImage tile6;
PImage tile7;
PImage tile8;

float dia;
float rectW, rectH;

float ptX1, ptY1;
float ptX2, ptY2;
float ptX3, ptY3;
float ptX4, ptY4;

float bptX1, bptY1;
float bptY2;
float bptY3;
float b1W, b1H;

float tile1x, tile1y, tile1wh;
float tile2x, tile2y, tile2wh;
float tile3x, tile3y, tile3wh;
float tile4x, tile4y, tile4w, tile4h;
float tile5x, tile5y, tile5w, tile5h;
float tile6x, tile6y, tile6w, tile6h;
float tile7x, tile7y, tile7w, tile7h;
float tile8x, tile8y, tile8w, tile8h;

Boolean t1 = false;
Boolean t2 = false;
Boolean t3 = false;
Boolean t4 = false;
Boolean t5 = false;
Boolean t6 = false;
Boolean t7 = false;
Boolean t8 = false;




color black=#000000, white=#FFFFFF, red=#951111;

//on run------------------------------------------------

void setup() {
  fullScreen();
  population();
  textSetup();
  


  //rectangles===
  rect(ptX1, ptY1, rectW, rectH);//up, l
  rect(ptX2, ptY1, rectW, rectH);//up, mid
  rect(ptX3, ptY1, rectW, rectH);//up, r

  rect(ptX1, ptY2, rectW, rectH);//mid, l
  rect(ptX2, ptY2, rectW, rectH);//mid, mid
  rect(ptX3, ptY2, rectW, rectH);//mid, r

  rect(ptX1, ptY3, rectW, rectH);//do, l
  rect(ptX2, ptY3, rectW, rectH);//do, mid
  rect(ptX3, ptY3, rectW, rectH);//do, r



  //circles===
  fill (black);
  ellipse(ptX1, ptY1, dia, dia);//up, l
  ellipse(ptX2, ptY1, dia, dia);//up, lmid
  ellipse(ptX3, ptY1, dia, dia);//up, rmid
  fill(red);
  ellipse(ptX4, ptY1, dia, dia);//up, r
  fill(black);

  ellipse(ptX1, ptY2, dia, dia);//midup, l
  ellipse(ptX2, ptY2, dia, dia);//midup, lmid
  ellipse(ptX3, ptY2, dia, dia);//midup, rmid
  fill(red);
  ellipse(ptX4, ptY2, dia, dia);//midup, r
  fill(black);

  ellipse(ptX1, ptY3, dia, dia);//middo, l
  ellipse(ptX2, ptY3, dia, dia);//middo, lmid
  ellipse(ptX3, ptY3, dia, dia);//middo, rmid
  fill(red);
  ellipse(ptX4, ptY3, dia, dia);//middo, r
  fill(black);


  fill(red);
  ellipse(ptX1, ptY4, dia, dia);//do, l
  ellipse(ptX2, ptY4, dia, dia);//do, lmid
  ellipse(ptX3, ptY4, dia, dia);//do, rmid
  ellipse(ptX4, ptY4, dia, dia);//do, r

  fill(white);
  
}

//canvas-------------------------------------------------

void draw() {

   

  //buttons mid mid------------------------------------
  rect(bptX1, bptY1, b1W, b1H); //start
  textDrawPre();
  startButText();
  textDrawPost();

  rect(bptX1, bptY2, b1W, b1H); //reset
  textDrawPre();
  resetButText();
  textDrawPost();

  rect(bptX1, bptY3, b1W, b1H); //quit
  textDrawPre();
  quitButText();
  textDrawPost();

  //=========events=============
  if (t1 == true) {
    image (tile1, tile1x, tile1y, tile1wh, tile1wh); } //mug, tile1
  
  if (t2 == true) {
     image(tile2, tile2x, tile2y, tile2wh, tile2wh); }  //kettle, tile2
 
  if (t3 == true) {
    image(tile3, tile3x, tile3y, tile3wh, tile3wh); }
    
  if (t4 == true) {
    image(tile4, tile4x, tile4y, tile4w, tile4h); } 
    
  if (t5 == true) {
    image(tile5, tile5x, tile5y, tile5w, tile5h); } 
    
  if (t6 == true) {
    image(tile6, tile6x, tile6y, tile6w, tile6h); } 
    
  if (t7== true) {
    image(tile7, tile7x, tile7y, tile7w, tile7h); } 
    
  if (t8== true) {
    image(tile8, tile8x, tile8y, tile8w, tile8h); }   
  
  //println(t3);
}



//events------------------------------------------------

void mousePressed() {
  if (mouseX > bptX1 && mouseY > bptY3 && mouseX < bptX1+b1W && mouseY < bptY3+b1H) exit(); //quit
  
  if (mouseX > bptX1 && mouseY > bptY2 && mouseX < bptX1+b1W && mouseY < bptY2+b1H){//reset
    if (t8 == true) t1 = false;
                    t2 = false;
                    t3 = false;
                    t4 = false;
                    t5 = false;
                    t6 = false;
                    t7 = false;
                    t8 = false;
  }
//bptX1, bptY2, b1W, b1H

  if (mouseX > bptX1 && mouseY > bptY1 && mouseX < bptX1+b1W && mouseY < bptY1+b1H) { //start -> mug
    t1 = true;
  }

  if (mouseX > tile1x && mouseY > tile1y && mouseX < tile1x+tile1wh && mouseY < tile1y+tile1wh) { // kettle
    if (t1 == true) t2=true;
  }

  if (mouseX > tile2x && mouseY > tile2y && mouseX < tile2x+tile2wh && mouseY < tile2y+tile2wh) {
    if (t2 == true) t3 = true;
  }
    
   if (mouseX > tile3x && mouseY > tile3y && mouseX < tile3x+tile3wh && mouseY < tile3y+tile3wh) {
     if (t3 == true) t4 = true;
  }
   
   if (mouseX > tile4x && mouseY > tile4y && mouseX < tile4x+tile4w && mouseY < tile4y+tile4h) {
     if (t4 == true) t5 = true;
  }
  
   if (mouseX > tile5x && mouseY > tile5y && mouseX < tile5x+tile5w && mouseY < tile5y+tile5h) {
     if (t5 == true) t6 = true;
  }
  
  if (mouseX > tile6x && mouseY > tile6y && mouseX < tile6x+tile6w && mouseY < tile6y+tile6h) {
     if (t6 == true) t7 = true;
  }
  
  if (mouseX > tile7x && mouseY > tile7y && mouseX < tile7x+tile7w && mouseY < tile7y+tile7h) {
     if (t7 == true) t8 = true;
  }
  
}
 
  
  

//===

void keyPressed() 
{
}
