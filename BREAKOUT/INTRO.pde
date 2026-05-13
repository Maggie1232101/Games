void intro(){
  score = 0;
  lives = 3;
  clickDelay--;
  background(#FCAFAB);
  
  textAlign(CENTER,CENTER);
  textSize(125);
  fill(0);
  text("BREAKOUT!",width/2, height/2);
  textSize(25);
  text("Click anywhere to start",width/2, height/2+100);
  
  for(int i=0; i<n; i++){
    alive[i] = true;
  }
  
}

void introClick(){
  if(clickDelay<0){
mode = GAME;
clickDelay=30;
  }
}
