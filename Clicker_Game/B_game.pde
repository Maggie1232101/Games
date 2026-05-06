void game (){
  background(#76D899);
  imageMode(CENTER);
  fill(255);
  strokeWeight(5);
  ellipse(x,y,100,100);
  if(soft==true){
    image(styre,x,y,100,100);
  }else if(med==true){
    image(mtyre,x,y,100,100);
  }else if(hard ==true){
    image(htyre,x,y,100,100);
  }
  
  x = x+vx*v;
  y = y+vy*v;
  fill(0);
  textSize(30);
  text("SCORE: " +score, width/2, 30);
  text("LIVES: " +lives, width/2, 60);
  
  if (x > width - 50 || x<50){
    vx = vx * -1;
    
  }
 
  if (y > height - 50 || y<50){
    vy = vy * -1;
  }
  
}

void gameClick() {
  if (dist(mouseX, mouseY, x, y)<=50){
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
