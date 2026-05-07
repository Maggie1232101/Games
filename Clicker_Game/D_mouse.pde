void mouseReleased() {
  if (mode == INTRO) {
    introClick();
  } else if (mode == GAME) {
    gameClick();
  } else if (mode == GAMEOVER) {
    gameoverClick();
  } else if (mode==OPTIONS)optionClick();
}

void mouseDragged() {
  if (mode==OPTIONS) {
    if (mouseY>500 && mouseY<750) {
      if (dist(mouseX, mouseY, 200, sliderY)<200) {
        sliderY = mouseY;
      }
    }
  }
}
