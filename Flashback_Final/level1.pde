boolean load = true;

boolean door1 = true;
boolean door2 = true;
boolean door3 = true;
boolean door4 = true;

void level1() {
  surface.setSize(1000, 800);
  if (load == true) {
    //println("Made it");
    setupPosition();
    door1 = true;
    door2 = true;
    door3 = true;
    door4 = true;
    
    load = false;
    
    allMusicPause();
    levelOne.rewind();
    levelOne.play();
  }
  
  // Top Left Block
  longBlock.setColor(171, 0, 206);
  longBlock.detect(0, 0);
  
  // Center block
  block.setColor(171, 0, 206); // Purple
  block.detect(300, 200);
  
  // Left High "Spike"
  thinSpike.setColor(255, 0, 0);
  thinSpike.thinKillDetect(175, 100);
  
  // Left block
  thinBlock.setColor(171, 0, 206); // Purple
  thinBlock.detect(0, 300);
  
  // Left ceiling
  ceiling.setColor(0, 206, 201); // Greenish-blue
  ceiling.phaseDetect(0, 600);
  
  // Higher "Spike"
  spike.setColor(255, 0, 0); // Red
  spike.killDetect(150, 400);
  
  // Lower "Spike"
  spike.setColor(255, 0, 0); // Red
  spike.killDetect(150, 700);
  
  // Top Right Block
  longerBlock.setColor(171, 0, 206);
  longerBlock.detect(530, 0);
  
  // Center Right Trap
  sideSpike.setColor(255, 0, 0);
  sideSpike.killDetect(550, 350);
  
  // Side Right Trap
  sideSpike.setColor(255, 0, 0);
  sideSpike.killDetect(800, 350);
  
  // Bottom Right Trap
  longerBlock2.setColor(255, 0, 0);
  longerBlock2.killDetect(550, 600);
  
  // Door 1
  if (door1) {
    door.setColor(0, 255, 0);
    door.detect(200, 300);
  }
  // Door 1 Switch
  doorSwitch.setColor(0, 255, 0);
  doorSwitch.switchDetect(50, 700);
  
  // Door 2
  if (door2) {
    vDoor.setColor(0, 255, 0);
    vDoor.detect(300, 100);
  }
  
  doorSwitch.setColor(0, 255, 0);
  doorSwitch.switchDetect2(50, 475);
  
  // Door 3
  if (door3) {
    vDoor.setColor(0, 255, 0);
    vDoor.detect(530, 100);
  }
  
  doorSwitch.setColor(0, 255, 0);
  doorSwitch.switchDetect3(50, 175);
  
  // Door 4
  if (door4) {
    longDoor.setColor(0, 255, 0);
    longDoor.detect(320, 80);
  }
  
  doorSwitch.setColor(0, 255, 0);
  doorSwitch.switchDetect4(750, 350);

  // Complete Detect
  doorSwitch.setColor(0, 0, 255);
  doorSwitch.completeDetect(400, 14, false);
  
  
}