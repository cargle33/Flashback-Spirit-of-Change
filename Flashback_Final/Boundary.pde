void setBoundary() {
  noFill();
  stroke(0);
  rect(0, 0, width, height);
  if(hitX <= 0) {
    xpos = xpos + 5;
  }
  if(hitY <= 0) {
    ypos = ypos + 5;
  }
  if(hitXend >= width) {
    xpos = xpos - 5;
  }
  if(hitYend >= height) {
    ypos = ypos - 5;
  }
}