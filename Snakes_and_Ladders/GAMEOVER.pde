void gameover(){
  textAlign(CENTER, CENTER);
  if(blueWin == true){
    background(#8AA2F5);
    fill(255);
    textSize(50);
    text("BLUE WINS!!!!!!",width/2,height/2);
  }
  if(redWin == true){
    background(#F5938A);
        fill(255);
    textSize(50);
    text("RED WINS!!!!!!",width/2,height/2);
  }
  
  fill(255);
  text("Click to Continue",width/2,height/2+100);
  
  
}

void gameoverClick(){
  mode = INTRO;
  
}
