void game() {


  delay--;
  if (blueTurn == true) {
    background(#8AA2F5);
  } else if (redTurn == true) {
    background(#F5938A);
  } else background(#C1BFBF);
  board();


  //players
  fill(#F5938A);
  circle(x[redPos]+50, y[redPos]+30, 50);
  fill(#8AA2F5);
  circle(x[bluePos]+50, y[bluePos]+60, 50);

  dice();
  
  //gameover
  if(redPos == 48){
    redWin = true;
    mode = GAMEOVER;
  }
  if(bluePos >= 48){
    blueWin = true;
    mode = GAMEOVER;
  }
}

void gameClick() {
  if (mouseX>width/2-25 && mouseX<width/2+25 && mouseY>525 && mouseY<575) {
    diceN = int(random(1, 7));

    if (redTurn && delay < 0) {
      if(redPos + diceN<=48){
        redPos += diceN;}
      redTurn = false;
      blueTurn = true;
      delay = 10;
    }

    if (blueTurn && delay < 0) {
      if(bluePos + diceN<=48){
        bluePos+=diceN;}
      redTurn = true;
      blueTurn = false;
      delay = 10;
    }
  }
}

void dice() {
  fill(255);
  stroke(0);
  strokeJoin(ROUND);
  strokeWeight(3);
  square(width/2-25, 525, 50);
  fill(0);
  if (diceN == 1) {
    circle(width/2, 550, 10);
  } else if (diceN ==2) {
    circle(width/2-15, 535, 10);
    circle(width/2+15, 565, 10);
  } else if (diceN ==3) {
    circle(width/2-15, 535, 10);
    circle(width/2+15, 565, 10);
    circle(width/2, 550, 10);
  } else if (diceN ==4) {
    circle(width/2-15, 535, 10);
    circle(width/2+15, 565, 10);
    circle(width/2-15, 565, 10);
    circle(width/2+15, 535, 10);
  } else if (diceN ==5) {
    circle(width/2-15, 535, 10);
    circle(width/2+15, 565, 10);
    circle(width/2-15, 565, 10);
    circle(width/2+15, 535, 10);
    circle(width/2, 550, 10);
  } else if (diceN==6) {
    circle(width/2-15, 535, 10);
    circle(width/2+15, 565, 10);
    circle(width/2-15, 565, 10);
    circle(width/2+15, 535, 10);
    circle(width/2-15, 550, 10);
    circle(width/2+15, 550, 10);
  } else println("error");
}
