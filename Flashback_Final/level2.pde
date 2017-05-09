int pendX, pend2X;
int pendInc;

float currentTime;
boolean flag;

void level2() {
  surface.setSize(1000, 800);
  if (load == true) {
    //println("Made it");
    setupPosition();
    pendX = 150;
    pend2X = 850;
    pendInc = 10;
    door1 = true;
    load = false;
    
    currentTime = 0;
    flag = true;
    
    allMusicPause();
    levelTwo.rewind();
    levelTwo.play();
    // insert music here
  }
  
  // Top pend
   fill(255, 124, 0);
   stroke(0);
   ellipse(pendX, 300, 200, 200);
   rectMode(RADIUS);
   pendulum.invisKillDetect(pendX, 300);
  // rect(pendX, 200, 70, 70);
   
   pendX = pendX + pendInc;
   pend2X = pend2X - pendInc;
   
   // Bot pend
   fill(255, 124, 0);
   stroke(0);
   ellipse(pend2X, 600, 200, 200);
   rectMode(RADIUS);
   pendulum.invisKillDetect(pend2X, 600);
   
   if (pendX <= 150 || pendX >= 850) {
     pendInc = pendInc*-1;
   }
   
   
  rectMode(CORNER);
  // Door 1
  if (door1) {
    door.setColor(0, 255, 0);
    door.detect(450, 150);
  }
  // Door 1 Switch
  doorSwitch.setColor(0, 255, 0);
  doorSwitch.switchDetect(480, 425);
  
  // Timer for door
  if (door1 == false) {
    if (flag == true) {
      currentTime = millis();
     // println("CURRENT TIME" + currentTime);
      flag = false;
    }
    
    if (millis() >= currentTime + 3000) {
      //println("Passed");
      door1 = true;
      flag = true;
    }
  }
   
  pWall.setColor(171, 0, 206);
  pWall.detect(435, 75);
  
  pWall.setColor(171, 0, 206);
  pWall.detect(535, 75);
  
  pCeiling.setColor(171, 0, 206);
  pCeiling.detect(435, 50);
   
  // Complete Detect
  doorSwitch.setColor(0, 0, 255);
  doorSwitch.completeDetect(470, 80, true);
  
  
}