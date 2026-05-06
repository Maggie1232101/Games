
void keyPressed(){
  if(mode==GAME)gameKey();
  if(mode==GAMEOVER)gameoverKey();
}

void keyReleased(){
  if(mode==GAME)gameKeyR();
}
