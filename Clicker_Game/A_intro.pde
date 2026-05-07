void intro(){
  strokeJoin(ROUND);
  background(#76B8D8);
  strokeWeight(10);
  fill(255);
  tactR(width/2-200,height/2+200,200,100);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("START",width/2-200,height/2+200);
  fill(255);
  tactR(width/2+200,height/2+200,200,100);
  fill(0);
  text("OPTIONS",width/2+200,height/2+200);
  
  //title
  textSize(100);
  textAlign(CENTER);
  fill(#EAB51F);
  text("PIRELLI PRESSER",width/2-10,height/2-90);
  
  textSize(100);
  fill(0);
  text("PIRELLI PRESSER", width/2,height/2-100);
}

void introClick(){
  if (mouseX > width/2 -300 && mouseX< width/2 -100 && mouseY > height/2 +150 && mouseY < height/2 +250){
    mode = GAME;
    lives = 3;
    score = 0;
    x=width/2;
    y=height/2;
    v=1;
  }
  if(mouseX>width/2+100 && mouseX<width/2+300 && mouseY>height/2+150 && mouseY<height/2 +250){
    mode = OPTIONS;
  }
}

void tactR(int x, int y, int w, int h){
  
  if(mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
    stroke(200);
  }
  else stroke(0);
  rect(x,y,w,h);
}
