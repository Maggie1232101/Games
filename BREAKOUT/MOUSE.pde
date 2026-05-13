void mouseReleased(){
  if(mode==INTRO)introClick();
  if(mode==GAME)gameClick();
  if(mode==GAMEOVER)gameoverClick();
  if(mode==PAUSE)pauseClick();
}

void keyPressed(){
  if(keyCode == LEFT)left = true;
  if(keyCode == RIGHT)right = true;
  
}
void keyReleased(){
  if(keyCode == LEFT)left = false;
  if(keyCode == RIGHT)right = false;
  
}
