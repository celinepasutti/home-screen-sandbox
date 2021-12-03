String start = "Start!";
String reset = "Reset";
String quit = "Quit";


PFont font;

void textSetup() {
  println("start of console :)");
  font = createFont ("Gabriola", 50);
}

void textDrawPre() {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont (font, 30);
}

void textDrawPost () {
 fill(white); 
}

void startButText () {
  text(start, bptX1, bptY1, b1W, b1H);
}

void resetButText () {
  text(reset, bptX1, bptY2, b1W, b1H);
}

void quitButText () {
  text(quit, bptX1, bptY3, b1W, b1H);
}
