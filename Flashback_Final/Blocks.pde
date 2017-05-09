Rectangle ceiling, wall, block, thinBlock, playButton, spike, thinSpike, door, doorSwitch, vDoor, longBlock, longerBlock, longerBlock2, longDoor, sideSpike, pendulum, pWall, pCeiling, maze;
Rectangle rects[], trigger, traps[], endBlock, boss;
void setupBlocks() {
  // MAIN MENU
  playButton = new Rectangle("Play", 50, 25);
  
  // LEVEL 1
  ceiling = new Rectangle("Ceiling", 150, 10);
  wall = new Rectangle("Wall", 10, 150);
  block = new Rectangle("Block", 250, 500);
  thinBlock = new Rectangle("Thin", 200, 100); 
  longBlock = new Rectangle("Long", 320, 100);
  longerBlock = new Rectangle("Longer", 470, 100);
  longerBlock2 = new Rectangle("Longer2", 450, 100);
  
  spike = new Rectangle("Spike", 50, 200);
  thinSpike = new Rectangle("smallSpike", 25, 200);
  sideSpike = new Rectangle("sideSpike", 200, 25);
  
  door = new Rectangle("Door", 100, 20);
  vDoor = new Rectangle("Door", 20, 100);
  longDoor = new Rectangle("Door", 210, 20);
  doorSwitch = new Rectangle("doorSwitch", 50, 50);
  
  
  // LEVEL 2
  pendulum = new Rectangle("Pendulum", 70, 70);
  pWall = new Rectangle("Wall", 25, 100);
  pCeiling = new Rectangle("Ceiling", 125, 25);
  
  maze = new Rectangle("maze", 50, 50);
  
  // Boss Level
  rects = new Rectangle[10]; // Hallways
 
  rects[0] = new Rectangle("0", 450, 1);
  rects[1] = new Rectangle("1", 1, 150);
  rects[2] = new Rectangle("2", 300, 1);
  rects[3] = new Rectangle("3", 1, 50);
  rects[4] = new Rectangle("4", 1, 250);
  rects[5] = new Rectangle("5", 1, 75);
  rects[6] = new Rectangle("6", 200, 1);
  rects[7] = new Rectangle("7", 1, 100);
  rects[8] = new Rectangle("8", 400, 1);
 
  trigger = new Rectangle("trigger", 25, 25);
  
  traps = new Rectangle[3];
  
  traps[0] = new Rectangle("t0", 200, 75);
  traps[1] = new Rectangle("t1", 50, 50);
  traps[2] = new Rectangle("t2", 100, 35);
  
  endBlock = new Rectangle("end", 50, 50);
  
  boss = new Rectangle("boss", 25, 25);
  
}