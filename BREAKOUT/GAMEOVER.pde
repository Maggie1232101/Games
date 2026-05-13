void gameover() {
  clickDelay--;
  if (lose == true) {
    image(creekGif[f], 0, 0, width, height);
    f++;
    if (f==numberFrames) f=0;

    textSize(100);
    fill(255);
    text("YOU LOSE", width/2 -10, height/2+10);
    fill(0);
    text("YOU LOSE", width/2, height/2);
  }

  if (win == true) {
    image(vectorGif[fV], 0, 0, width, height);
    fV++;
    if (fV == numberFramesV) fV=0;
    textSize(100);
    fill(255);
    text("YOU WIN", width/2 -10, height/2+10);
    fill(0);
    text("YOU WIN", width/2, height/2);
  }
}

void gameoverClick() {
  if(clickDelay<0){
    clickDelay = 15;
    mode = INTRO;
  }
}
