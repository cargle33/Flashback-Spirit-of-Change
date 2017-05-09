Animation standAnimation, upAnimation, downAnimation, leftAnimation, rightAnimation;
Animation bossAnimation;

// Animation class
class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];
    
    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + nf(i, 1) + ".png";
      images[i] = loadImage(filename);
    }
  }
  
   void display(int xpos, int ypos) {
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos);
  }
}

// ANIMATION SETUP
void setupAnimation() {
  standAnimation = new Animation("d", 1);

  // down = up and up = down
  downAnimation = new Animation("u", 1);
  upAnimation = new Animation("d", 1);
  leftAnimation = new Animation("l", 1);
  rightAnimation = new Animation("r", 1);
}  
  

void setupBossAnimation() {
  
  bossAnimation = new Animation("boss", 1);
}