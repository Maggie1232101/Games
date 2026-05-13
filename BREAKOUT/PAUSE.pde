void pause(){
  clickDelay--;
  text("PAUSED",width/2,height/2);
  text("CLICK TO CONTINUE",width/2,height/2+100);
}

void pauseClick(){
  if(clickDelay <0){
    mode = GAME;
    clickDelay = 15;}
}
