void endMenu() {
  surface.setSize(1000, 800);
  if (load == true) {
    setupPosition();
    load = false;
    
    allMusicPause();
    victory.rewind();
    victory.play();
  }
  
  winText();
  
}

void winText() {
  font = createFont("Castellar", 20);
  textFont(font);
  fill(255, 0, 0);
  text("You Win!", 475, 150);
}