void game (){
  background(#76D899);
  imageMode(CENTER);
  fill(255);
  strokeWeight(5);
  circle(x,y,thick);
  if(soft==true){
    image(styre,x,y,thick,thick);
  }else if(med==true){
    image(mtyre,x,y,thick,thick);
  }else if(hard ==true){
    image(htyre,x,y,thick,thick);
  }
  
  x = x+vx*v;
  y = y+vy*v;
  fill(0);
  textSize(30);
  text("SCORE: " +score, width/2, 30);
  text("LIVES: " +lives, width/2, 60);
  
  if (x > width - thick/2 || x<thick/2){
    vx = vx * -1;
    
  }
 
  if (y > height - thick/2 || y<thick/2){
    vy = vy * -1;
  }
  
}

void gameClick() {
  if (dist(mouseX, mouseY, x, y)<=thick/2){
    score = score+1;
    v=v+0.05;
  
  }
  else {
    lives = lives - 1;
  }
  
  if (lives<1){
    mode = GAMEOVER;
  }
  
}
