void intro(){
  background(#EEB7FF);
  fill(255);
  textFont(font);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("SNAKES AND LADDERS", width/2, height/2);
  
  rectMode(CENTER);
  strokeWeight(5);
  stroke(0);
  rect(width/2 - 200, height/2+150,300,100);
  rect(width/2+200,height/2+150,300,100);
  fill(0);
  textSize(40);
  text("Single player",width/2-200,height/2+150);
  text("Two Player",width/2+200,height/2+150);
  rectMode(CORNER);
  
  redPos = 0;
  bluePos = 0;
}

void introClick(){
  mode=GAME;
  if(mouseX>width/2-350 && mouseX<width/2-50 && mouseY>height/2+100 && mouseY<height/2+200)AI = true;
  if(mouseX>width/2+50 && mouseX<width/2+350 && mouseY>height/2+100 && mouseY<height/2+200)AI = false;
}
