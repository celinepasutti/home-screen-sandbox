//3x3 hs

//declaration-------------------------------------------
PImage tile1;

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

Boolean on = false;

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

  rect(ptX1, ptY3, rectW, rectH);//mid, l
  rect(ptX2, ptY3, rectW, rectH);//mid, mid
  rect(ptX3, ptY3, rectW, rectH);//mid, r



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

  //======================
  if (on = true) {
    image (tile1, tile1x, tile1y, tile1wh, tile1wh); //mug, tile1
  }
  println(on);
}



//events------------------------------------------------

void mousePressed() {
  if (mouseX > bptX1 && mouseY > bptY3 && mouseX < bptX1+b1W && mouseY < bptY3+b1H) exit(); //quit

  if (mouseX > bptX1 && mouseY > bptY3 && mouseX < bptX1+b1W && mouseY < bptY3+b1H) { //start
    on=true;
  }

  if (mouseX > tile1x && mouseY > tile1y && mouseX < tile1x+tile1wh && mouseY < tile1y+tile1wh);
}
//===

void keyPressed() 
{
}
