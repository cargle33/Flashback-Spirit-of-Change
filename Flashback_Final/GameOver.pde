void gameOver() {
  surface.setSize(1000, 800);
  if (load == true) {
    setupPosition();
    load = false;
    
    allMusicPause();
    over.rewind();
    over.play();
  }
  
  gameOverText();
  
  restartText();
  restartDetect();
}

void restartText() {
  font = createFont("Calibri", 16);
  textFont(font);
  fill(0);
  text("Restart", 500, 202);
}

void restartDetect() {
  fill(255, 0, 0, 25);
  rect(490, 185, 70, 25);
  playButton.gameOverDetect(490, 185);
}

void gameOverText() {
  font = createFont("Castellar", 20);
  textFont(font);
  fill(255, 0, 0);
  text("Game Over", 455, 150);
}