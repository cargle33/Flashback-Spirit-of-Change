int bossX;
float bossXf;
int counter;

void level3() {
  surface.setSize(1000, 800);
  if (load == true) {
    //println("Made it");
    main.pause();
    door1 = true;
    setupPosition();
    setupBossAnimation();
    bossX = 500;
    bossXf = 500;
    load = false;
    
    allMusicPause();
    bossFight.rewind();
    bossFight.play();
  }
  
  // Door1
    // Door 1
  if (door1) {
    door.setColor(0, 0, 255);
    door.detect(450, 200);
  }
  
  // Center block
 // block.setColor(171, 0, 206); // Purple
 // block.detect(300, 200);
  
 // rects[0].setColor(171, 0, 206);
  rects[0].detect(0, 200);
  rects[0].detect(550, 200);
  //line(0, 200, width, 200); // 1000 right (0, 200);
  
  //top left maze part
//  rects[1].setColor(171, 0, 206);
  rects[1].detect(100, 200);
  //line(100, 200, 100, 350); // 150 down (100, 200);
  rects[2].detect(100, 350);
  //line(100, 350, 400, 350); // 300 right (100, 350);
  rects[1].detect(400, 200);
  //line(400, 350, 400, 200); // 150 down (400, 200);
  
  //middle left maze part
  rects[3].detect(100, 400);
 // line(100, 400, 100, 450); // 50 down (100, 400);
  rects[2].detect(100, 400);
  //line(100, 400, 400, 400); // 300 right (100, 400);
  rects[2].detect(100, 450);
  //line(100, 450, 400, 450); // 300 right (100, 450);
  rects[3].detect(400, 400);
 // line(400, 400, 400, 450); // 50 down (400, 400);
  
  //bottom left maze part
  rects[4].detect(100, 500);
  //line(100, 500, 100, 750); // 250 down (100, 500);
  rects[2].detect(100, 500);
  //line(100, 500, 400, 500); // 300 right (100, 500);
  rects[5].detect(400, 500);
 // line(400, 500, 400, 575); // 75 down (400, 500);
  rects[2].detect(100, 575);
  //line(100, 575, 400, 575); // 300 right (100, 575);
  rects[2].detect(100, 675);
  //line(100, 675, 400, 675); // 300 right (100, 675);
  rects[2].detect(100, 750);
  //line(100, 750, 400, 750); // 300 right (100, 750);
  
  //center denial
  rects[6].detect(400, 250);
 // line(400, 250, 600, 250); // 200 right (400, 250);
  
  //top right maze part
  rects[2].detect(600, 250);
  //line(600, 250, 900, 250); // 300 right (600, 250);
  rects[2].detect(600, 350);
  //line(600, 350, 900, 350); // 300 right (600, 350);
  rects[7].detect(600, 250);
  //line(600, 250, 600, 350); // 100 down (600, 250);
  rects[7].detect(900, 250);
  //line(900, 250, 900, 350); // 100 down (900, 250);
  
  //right maze connector corner pocket
 // rects[3].detect(900, 350);
  //line(900, 350, 900, 400); // 50 down (900, 350);
  
  //middle right maze part
  rects[2].detect(600, 400);
  //line(600, 400, 900, 400); // 300 right (600, 400);
  rects[2].detect(600, 450);
  //line(600, 450, 900, 450); // 300 right (600, 450);
  rects[3].detect(600, 400);
  //line(600, 400, 600, 450); // 50 down (600, 400);
  rects[3].detect(900, 400);
  //line(900, 400, 900, 450); // 50 down (900, 400);
  
  //bottom right maze part
  rects[8].detect(600, 500);
  //line(600, 500, width, 500); // 400 right (600, 500);
  rects[2].detect(600, 575);
  //line(600, 575, 900, 575); // 300 right (600, 575);
  rects[5].detect(900, 500);
  //line(900, 500, 900, 575); // 75 down (900, 500);
  rects[2].detect(600, 675);
 // line(600, 675, 900, 675); // 300 right (600, 675);
  rects[2].detect(600, 750);
  //line(600, 750, 900, 750); // 300 right (600, 750);
  rects[7].detect(900, 675);
  //line(900, 675, 900, 750); // 100 down (900, 675);
  
  //Nintendo Switch
  //fill(0, 0, 255); 
  rectMode(CENTER);
  trigger.setColor(0, 0, 255);
  trigger.switchDetect(500, 475);
  //rect(500, 475, 25, 25);  // (25 x 25) (500, 475);
  
  //#traps
  fill(255, 0, 0);
  traps[0].setColor(255, 0, 0);
  traps[0].killDetect(400, 500);
  traps[0].killDetect(400, 600);
  traps[1].setColor(255, 0, 0);
  traps[1].killDetect(650, 450);
  traps[1].killDetect(800, 450);
  traps[2].setColor(255, 0, 0);
  traps[2].killDetect(900, 355);
  traps[1].killDetect(725, 200);
  //rect(400, 500, 600, 575);
 // rect(400, 575, 600, 675);
 // rectMode(CORNERS);
 // rect(650, 450, 700, 500);
//  rect(800, 450, 850, 500);
  //rect(900, 350, width, 400);
 // rect(725, 200, 775, 250);
 
 
  fill(#13D8F0);
  stroke(#13D8F0);
  //gem on top left.
  triangle(75,50,50,100,100,100);
  triangle(75,150,50,100,100,100);
 // Good End Game
 endBlock.endDetect(50, 75); // Add in diamond representation. 
 
 //boss.setColor(255, 0, 0);  // Add in boss .png
 //boss.display(bossX, 50);
 
 bossAnimation.display(bossX, 50);
 if (counter == 3) {
   bossX++;
   counter = 0;
 } else {
   counter++;
 }


 if (bossX+80 >= 960) {
   load = true;
   level = 10;
 }
 
  //Boss Gem
  fill(#FF2F05);
  stroke(100);
  strokeWeight(5);
  triangle(970,75,990,100,950,100);
  strokeWeight(8);
  line(970,100,970,125);
  stroke(0);
  strokeWeight(1);
 // Bad End Game
 //endBlock.endDetect(945, 50); // Swap later
  
  
}