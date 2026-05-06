
void intro() {
  redScore=0;
  blueScore=0;
  for (int y=0; y<height; y=y+50) {
    for (int i=0; i<width; i=i+50) {
      float inter = map(i, 0, width, 0, 1);
      color c = lerpColor(#FF6A6A, #6AA1FF, inter);
      fill(c);
      stroke(255);
      rect(0+i, 0+y, 50, 50);
    }
  }
  
  //title
  textAlign(CENTER,CENTER);
  textFont(groove);
  fill(255);
  textSize(200);
  text("PONG",width/2-5,height/2-95);
   fill(#454546);
  textSize(200);
  strokeWeight(5);
  text("PONG",width/2,height/2-100);
  
  
  //1player vs 2player buttons
  rect(100,400,200,100);
  rect(500,400,200,100);
  fill(255);
  textSize(50);
  text("1 Player",200,450);
  text("2 Player",600,450);
  
  textAlign(CORNER);
  
}

void introClick() {
  if(mouseX>100 && mouseX<300 && mouseY>400 && mouseY<500){
    AI = true;
    mode = GAME;
  }
  if(mouseX>500 && mouseX<700 && mouseY>400 && mouseY<500){
    AI = false;
    mode = GAME;
  }
}
