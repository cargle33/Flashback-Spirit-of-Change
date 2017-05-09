int osc = 51;
int inc = 2;

class GenObject {
  private int ob_width;
  private int ob_height;
  
  GenObject() {
    ob_width = ob_height = 0;
  }
  
  GenObject(int w, int h) {
    ob_width = w;
    ob_height = h;
  }
  
  GenObject(int x) {
    ob_width = ob_height = x;
  }
  
  int getWidth() { return ob_width; }
  int getHeight() { return ob_height; }
  void setWidth(int w) { ob_width = w; }
  void setHeight(int h) { ob_height = h; }
}

/*
class Straight extends GenObject {
  private String style;
  
  Straight() {
    super();
    style = "none";
  }
  
  Straight(int x1, int y1, int x2, int y2) {
    
  }
}
*/

class Rectangle extends GenObject {
  private String style;
  private int RED;
  private int GREEN;
  private int BLUE;
  
  Rectangle() {
    super();
    style = "none";
  }
  
  Rectangle(String s, int w, int h) {
    super(w, h);
    
    style = s;
  }
  
  Rectangle(int x) {
    super(x);
    
    style = "filled";
  }
  
  int getArea() {
    return getWidth() * getHeight();
  }
  
  String getStyle() {
    return style;
  }
  
  void setColor(int r, int g, int b) {
    RED = r;
    GREEN = g;
    BLUE = b;
  }
  
  void noDisplay(int x, int y) {
    noFill();
    noStroke();
    rect(x, y, getWidth(), getHeight());
  }
  
  void display(int x, int y) {
    rectMode(CORNER);
    fill(RED, GREEN, BLUE);
    rect(x, y, getWidth(), getHeight());
  }
  
  
  void detect(int x, int y) {
    rectMode(CORNER);
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE);
    rect(x, y, getWidth(), getHeight());
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
     // println("Blocked.");
      xpos = pXpos;
      ypos = pYpos;
    }
  }
  
  void phaseDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, 45);
    rect(x, y, getWidth(), getHeight());
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
     // println("Physical: " + physical);
      xpos = pXpos;
      ypos = pYpos;
    }
  }
  
  void menuCompleteDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       load = true;
       level++;
    }
  }
  
  void completeDetect(int x, int y, boolean pM) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE);
    rect(x, y, getWidth(), getHeight());
   // println("Complete Detected");
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY) && (pM == true)) {
       load = true;
       playMovie = true;
       level++;
    } else if ((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       load = true;
       level++;
    }
  }
  
  void gameOverDetect(int x, int y) {
    rectMode(CORNER);
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       load = true;
       level = prevLevel;
    }
  }
  
  void endDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    noStroke();
    noFill();
    rect(x, y, getWidth(), getHeight());
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       playMovie = true;
       level = 7;
       load = true;
    }
  }
  
  void closeDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       exit();
    }
  }
  
  
  void invisKillDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    noFill();
    noStroke();
    rect(x, y, getWidth(), getHeight());
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       //alive = false;
       level = 10;
       load = true;
    }
  }
  void killDetect(int x, int y) {
    rectMode(CORNER);
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE);
    rect(x, y, getWidth(), getHeight());
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       //alive = false;
       level = 10;
       load = true;
    }
  }
  
  void thinKillDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE);
    rect(x, y, getWidth(), getHeight());
    
    if((physical == true) && (hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       //alive = false;
       level = 10;
       load = true;
    }
  }
  
 void timeDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, osc);
    osc = osc + inc;
    if(osc <= 50 || osc >= 255) {
      inc*=-1;
    }
    //println("osc: " + osc);
    rect(x, y, getWidth(), getHeight());
    
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       door1 = false;
    }
  }
  
  void switchDetect(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, osc);
    osc = osc + inc;
    if(osc <= 50 || osc >= 255) {
      inc*=-1;
    }
    //println("osc: " + osc);
    rect(x, y, getWidth(), getHeight());
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       door1 = false;
    }
  }
  
  void switchDetect2(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, osc);
    rect(x, y, getWidth(), getHeight());
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       door2 = false;
    }
  }
  
  void switchDetect3(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, osc);
    rect(x, y, getWidth(), getHeight());
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       door3 = false;
    }
  }
  
  void switchDetect4(int x, int y) {
    int endX = x + getWidth();
    int endY = y + getHeight();
    
    fill(RED, GREEN, BLUE, osc);
    rect(x, y, getWidth(), getHeight());
    
    if((hitXend >= x) && (hitX <= endX) && (hitYend >= y) && (hitY <= endY)) {
       door4 = false;
    }
  }
  
}