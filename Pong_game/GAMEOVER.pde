void gameover(){
  if(redScore>blueScore){
    fill(255);
    textSize(150);
    textAlign(CENTER,CENTER);
    text("RED WINS!!",width/2-10,height/2+10);
    fill(#B22502);
    text("RED WINS!!",width/2, height/2);
  }
  if(blueScore>redScore){
    fill(255);
    textSize(150);
    textAlign(CENTER,CENTER);
    text("BLUE WINS!!",width/2-10,height/2+10);
    fill(#001490);
    textAlign(CENTER,CENTER);
    text("BLUE WINS!!",width/2, height/2);
    
  }
}

void gameoverClick(){
  
}
void gameoverKey(){
  if(key == ' ') mode = INTRO;
}
