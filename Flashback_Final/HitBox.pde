float hitX;
float hitY;
float hitXend;
float hitYend;
 
// Hit Box
void updateHitBox() {
  hitX = xpos+12;
  hitY = ypos+10;
  hitXend = hitX + 25;
  hitYend = hitY + 37;
  noFill();
  noStroke();
  rect(hitX, hitY, 25, 37);  
}

void setupHitBox() {
  hitX = xpos+12;
  hitY = ypos+10;
  hitXend = hitX + 25;
  hitYend = hitY + 37;
}