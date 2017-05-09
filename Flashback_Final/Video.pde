import processing.video.*;
import java.awt.*;
import processing.core.*;

Movie movOne, movThree, movEnd;

void setupMovie() {
  movOne = new Movie(this, "Flashback_Exposition.mp4");
  movThree = new Movie(this, "Flashback_Scene_3.mp4");
  movEnd = new Movie(this, "Flashback_Ending.mp4");
}

void intro() {
  surface.setSize(1280, 720);
  movOne.play();
  image(movOne, 0, 0);
}

void scene3() {
  surface.setSize(1280, 720);
  movThree.play();
  image(movThree, 0, 0);
}

void end() {
  surface.setSize(1280, 720);
  movEnd.play();
  image(movEnd, 0, 0);
}
  
  
  
  
  
  
  