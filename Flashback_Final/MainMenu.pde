PFont font;

void mainMenu() {
  surface.setSize(1000, 800);
  if (load == true) {
    setupPosition();
    load = false;
    
    main.rewind();
    main.play();
  }
  
  title();
  
  playText();
  playDetect();

}

void playText() {
  font = createFont("Calibri", 16);
  textFont(font);
  fill(0);
  text("Play", 500, 402);
}

void playDetect() {
  fill(255, 0, 0, 25);
  rect(490, 385, 50, 25);
  playButton.menuCompleteDetect(490, 385);
}

void title() {
  font = createFont("Castellar", 20);
  textFont(font);
  fill(0);
  text("Flashback: Spirit of Change", 350, 350);
}