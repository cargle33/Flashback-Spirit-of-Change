/*
  Flashback: Spirit of Change
--------------------------------------------
  Programming: Michael Smith
  Music and Cutscenes: Alwin De Gala
  Character and Level Design: Patricia Brito
*/

int level = 0;
int prevLevel = 0;
int mLevel = 0;
float movieTimer;
float movieTimer2;
boolean movieFlag;
boolean playMovie;
boolean nextMovie;

void setup() {
  size(1000, 800);  
  frameRate(60);
  setupBlocks();
  
  setupPosition();
  setupAnimation();
  setupHitBox();
  
  setupMovie();
  surface.setResizable(true);
  movieTimer = 0;
  movieTimer2 = 0;
  movieFlag = true;
  playMovie = true;
  nextMovie = false;
  
  setupSound();

}
void movieEvent(Movie m) {
  if (m == movOne) {
    movOne.read();  
  } else if (m == movThree){
    movThree.read();
  } else if (m == movEnd) {
    movEnd.read();
  }
}

void draw() {
  background(255);
  //println("mLevel: " + mLevel);
  //println("nextMovie: " + nextMovie);
  setBoundary();
  if (playMovie == false) {
    //println("level: " + level);
    
    if (level == 0 && playMovie == false) {
      mainMenu();
    } 
  
    if (level == 1 && playMovie == false) {
      prevLevel = level;
      level1(); 
    }
    
    if (level == 2 && playMovie == false) {
      prevLevel = level;
      level2();
    }
    
    if (level == 3 && playMovie == false) {
      prevLevel = level;
      level3();
    }
    
    if (level == 7 && playMovie == false) {
       endMenu();
    }
    
    if (level == 10 && playMovie == false) {
      gameOver();
    }
     updateMovement();
     updateHitBox();
  } else { 
    if (nextMovie == true) {
      mLevel++;
      nextMovie = false;
    }
    if (mLevel == 0) {
      // 92 seconds  
      if (movieFlag == true) {
        allMusicPause();
        movieTimer = millis();
        movieFlag = false;      
      }
      
      intro();
      
      if (millis() >= movieTimer + 92000) {
        movieTimer = 0;
        movieFlag = true;
        movOne.stop();
        playMovie = false;
        nextMovie = true;
      }
    }
   
    if (mLevel == 1) {
      // 129 seconds
      if (movieFlag == true) {
        allMusicPause();
        movieTimer2 = millis();
        movieFlag = false;
      }
      
       scene3();
       
      if (millis() >= movieTimer2 + 129000) {
        movieTimer = 0;
        movieFlag = true;
        movThree.stop();
        playMovie = false;
        nextMovie = true;
      }
    }
    
    if (mLevel == 2) {
      //157 seconds
      if (movieFlag == true) {
        allMusicPause();
        movieTimer = millis();
        movieFlag = false;
      }
      
      end();
      
      if (millis() >= movieTimer + 157000) {
        movEnd.stop();
        playMovie = false;
      }
    }
  }
}