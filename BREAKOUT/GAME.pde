void game() {
  clickDelay--;
  background(#A1EAC3);
  fill(250);

  //ball
  circle(bx, by, bd);
  if(clickDelay<0){
  bx = bx+vx*v;
  by = by+vy*v;}
  if (bx<10 || bx>790)vx = -1*vx;
  if (by<10)vy = -1*vy;

  if (dist(px, height, bx, by)<pd/2+bd/2) {
    vx = bx/25-px/25;
    vy = by/25-height/25;
    v=v+0.1;
  }
  
  if(by>610) {
    by = height/2+50;
    bx = width/2;
    v = 1;
    lives--;
    vx = 0;
    vy = 2;
    clickDelay = 48;
  }

fill(10);
  circle(px, height, pd);
  if (right == true && px<705) {
    px = px+3;
  }
  if (left == true && px>95) {
    px = px-3;
  }


  //bricks
  int i =0;
  while (i<n) {
    if (alive[i] == true) {
      manageBrick(i);
    }
    i++;
  }
  
  
  //lives and score
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("LIVES: " +lives, 50,20);
  text("SCORE: " +score, 750,20);
  
  
  if(score==n){
    clickDelay = 15;
    win = true;
    lose = false;
    mode = GAMEOVER;
  }
  if(lives==0){
    clickDelay = 15;
    win = false;
    lose = true;
    mode = GAMEOVER;
  }
}

void gameClick() {
  if(clickDelay<0){
    mode = PAUSE;
    clickDelay = 15;}
}

void manageBrick( int i) {
  if (y[i] == 50)fill(#97D6D8);
  if (y[i] == 125)fill(#F5D18D);
  if (y[i] == 200)fill(#FCB2AB);
  if (y[i] == 275)fill(#FCABFB);
  circle(x[i], y[i], 50);

  if (dist(x[i], y[i], bx, by)<25+bd/2) {
    vx = bx/15-x[i]/15;
    vy = by/15-y[i]/15;
    alive[i] = false;
    score++;
  }
}
