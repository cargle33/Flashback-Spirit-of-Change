import ddf.minim.*;

Minim minim;
AudioPlayer main, levelOne, levelTwo, levelThree, bossFight, victory, over;
boolean songPlaying = true;

void setupSound() {
  minim = new Minim(this);
  
  main = minim.loadFile("Incipit_Melodia.mp3");
  levelOne = minim.loadFile("Introductio_Scaenam.mp3");
  levelTwo = minim.loadFile("Pompeius_Arce_1.mp3");
  levelThree = minim.loadFile("Pompeius_Arce_2.mp3");
  bossFight = minim.loadFile("Siblings.mp3");
  victory = minim.loadFile("Fine_Melodia.mp3");
  over = minim.loadFile("Repose_for_the_weary.mp3");
  
}

void allMusicPause() {
    main.pause();
    levelOne.pause();
    levelTwo.pause();
    levelThree.pause();
    bossFight.pause();
    over.pause();
    victory.pause();
}