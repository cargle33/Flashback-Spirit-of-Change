int xpos;
int ypos;
int pXpos;
int pYpos;
boolean physical = true;
boolean alive = true;

// MOVEMENT DETECTION
void updateMovement() {
  pXpos = xpos;
  pYpos = ypos;
  
  if (!keyPressed) {
   standAnimation.display(xpos, ypos);
  } else {
    if (keyPressed) {
      if(key == CODED) {
        if (keyCode == RIGHT) {
          physical = false;
          xpos += 10;
        }
         if (keyCode == LEFT) {
           physical = false;
          xpos -= 10;
         }
        if (keyCode == UP) {
          physical = false;
          ypos -= 10;
        }
         if (keyCode == DOWN) {
          physical = false;
          ypos += 10;
         }
      }
      
       if (key == 'w') {
          physical = true;
          ypos -= 5;
          downAnimation.display(xpos, ypos);
       }
       
       if (key == 'a') {
         physical = true;
         xpos -= 5;
         leftAnimation.display(xpos, ypos);
       }
       
       if (key == 's') {
         physical = true;
         ypos += 5;
          upAnimation.display(xpos, ypos);
       }
       
       if (key == 'd') {
         physical = true;
         xpos += 5;
         rightAnimation.display(xpos, ypos);
       }
    }
  }
}

// Position Initialization
void setupPosition() {
  xpos = width/2;
  ypos = (11*height)/12;
  pXpos = xpos;
  pYpos = ypos;
}