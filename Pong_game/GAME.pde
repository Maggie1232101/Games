void game() {
  //background
  for (int i=0; i<width; i++) {
    float inter = map(i, 0, width, 0, 1);
    color c = lerpColor(#FF6A6A, #6AA1FF, inter);
    fill(c);
    noStroke();
    rect(0+i, 0, 1, height);
  }

  //stuff goes here
  ld=dist(leftx, lefty, ballx, bally);
  rd=dist(rightx, righty, ballx, bally);

  //paddles
  stroke(255);
  strokeWeight(3);
  fill(#901D00);
  circle(leftx, lefty, leftd);
  fill(#001490);
  circle(rightx, righty, rightd);
  if (AI==false) {
    if (wkey==true && lefty>75)lefty=lefty-5;
    if (skey==true && lefty<height-75)lefty=lefty+5;
  }
  if (upkey==true && righty>75)righty=righty-5;
  if (downkey==true && righty<height-75)righty=righty+5;

  //ball
  noStroke();
  fill(0);
  circle(ballx, bally, balld);
  ballx=ballx+vx*v;
  bally=bally+vy*v;

  //paddle collisions
  if (ld<leftd/2+balld/2) {
    vx=ballx/25-leftx/25;
    vy=bally/25-lefty/25;
    v=v+0.05;
  }
  if (rd<rightd/2+balld/2) {
    vx=ballx/25-rightx/25;
    vy=bally/25-righty/25;
    v=v+0.05;
  }
  //wall collisions
  if (bally>=25) {
    vy=-1*vy;
  }
  if (bally<=575) {
    vy=-1*vy;
  }

  //points
  fill(0);
  textSize(20);
  textAlign(CORNER);
  text("RED: " +redScore, 10, 20);
  text("BLUE: " +blueScore, 700, 20);

  if (ballx<0) {
    blueScore++;
    ballx=width/2;
    bally=height/2;
    vx=vy=0;
    v=1;
  }
  if (ballx>800) {
    redScore++;
    ballx=width/2;
    bally=height/2;
    vx=vy=0;
    v=1;
  }
  
  //AI
  if(AI == true){
   
      if(bally<lefty)lefty=lefty-3;
      if(bally>lefty)lefty=lefty+3;
    }
  
  //gameover
  if(redScore>=5 || blueScore>=5)mode=GAMEOVER;
  
}
void gameClick() {
}
void gameKey(){
  //up and down
  if(key == 'w' || key == 'W') wkey = true;
  if(key == 's' || key == 'S') skey = true;
  if(keyCode == UP) upkey = true;
  if(keyCode == DOWN) downkey =true;
  
  //play
  if(key == ' ' && vx==0 && vy==0) vx = -1;
}
void gameKeyR(){
  if(key == 'w' || key == 'W') wkey = false;
  if(key == 's' || key == 'S') skey = false;
  if(keyCode == UP) upkey = false;
  if(keyCode == DOWN) downkey =false;
}
