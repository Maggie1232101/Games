void pause(){
  text("Paused",width/2, height/2);
}
void keyPressed(){
  if(mode == PAUSE){
    if(key == ' '){
      mode = GAME;
    }
  }
  else if(mode ==GAME){
    if(key == ' '){
      mode = PAUSE;
    }
  }
}
