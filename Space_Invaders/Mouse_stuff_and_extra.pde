void mouseReleased(){
  if(mode==INTRO)introClick();
  if(mode==GAME)gameClick();
  if(mode==PAUSE)pauseClick();
  if(mode == GAMEOVER)gameoverClick();
}

void keyReleased(){
  if(mode == GAME){
    
  }
  
}
