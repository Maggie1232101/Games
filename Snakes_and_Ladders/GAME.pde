void game() {
  if(!blueClimbing && !blueSliding){
  bluex = x[bluePos]+50;
  bluey = y[bluePos]+60;
  }
  if(!redClimbing && !redSliding){
  redx = x[redPos]+50;
  redy = y[redPos]+30;
  }
  
  textSize(10);
  textAlign(CORNER);
  stroke(0);
  strokeWeight(3);

  delay--;
  if (blueTurn|| blueMoving) {
    if(redPos == redTarget){
    background(#8AA2F5);
    }
  } else if (redTurn || redMoving) {
    background(#F5938A);
  } else background(#C1BFBF);
  board();

//ladders
  for (int i = 0; i < ladderStart.length; i++) {
    ladder(
      x[ladderStart[i]], y[ladderStart[i]],
      x[ladderEnd[i]], y[ladderEnd[i]]
      );
  }
  
  for (int i = 0; i < snakeStart.length; i++){
    snake(
    x[snakeStart[i]], y[snakeStart[i]],
    x[snakeEnd[i]], y[snakeEnd[i]]);
  }

  //players
  stroke(0);
  strokeWeight(3);
  fill(#F5938A);
  circle(redx, redy, 50);
  fill(#8AA2F5);
  circle(bluex, bluey, 50);

  dice();

  //gameover
  if (redPos == 48) {
    redWin = true;
    mode = GAMEOVER;
  }
  if (bluePos == 48) {
    blueWin = true;
    mode = GAMEOVER;
  }

  //moving pawns
  if (blueMoving) {
    if (bluePos < blueTarget) {
      if (delay < 0) {
        bluePos++;
        delay = 20;   // controls speed
      }
    } else {
      blueMoving = false;
      checkLadder();
      checkSnake();
    }
  }
  
  if(redMoving){
    if(redPos < redTarget){
      if(delay<0){
        redPos++;
        delay = 20;
      }
    }else{
      redMoving = false;
      checkLadder();
      checkSnake();
    }
  }
  
  //----------------------------------------------------------CLIMBING
if (redClimbing) {
  float tx = x[redTarget] + 50;
  float ty = y[redTarget] + 30;
  float speed = 4;

  redx += redvx * speed;
  redy += redvy * speed;

  if (dist(redx, redy, tx, ty) <= speed) {
    redx = tx;
    redy = ty;
    redPos = redTarget;
    redClimbing = false;
  }
}

if (blueClimbing) {
  float tx = x[blueTarget] + 50;
  float ty = y[blueTarget] + 60;
  float speed = 4;

  bluex += bluevx * speed;
  bluey += bluevy * speed;

  if (dist(bluex, bluey, tx, ty) <= speed) {
    bluex = tx;
    bluey = ty;
    bluePos = blueTarget;
    blueClimbing = false;
  }
}

  
  //-------------------------------------------------------------SLIDING
if (redSliding) {
  float tx = x[redTarget] + 50;
  float ty = y[redTarget] + 30;
  float speed = 4;

  redx += redvx * speed;
  redy += redvy * speed;

  if (dist(redx, redy, tx, ty) <= speed) {
    redx = tx;
    redy = ty;
    redPos = redTarget;
    redSliding = false;
  }
}

if (blueSliding) {
  float tx = x[blueTarget] + 50;
  float ty = y[blueTarget] + 60;
  float speed = 4;

  bluex += bluevx * speed;
  bluey += bluevy * speed;

  if (dist(bluex, bluey, tx, ty) <= speed) {
    bluex = tx;
    bluey = ty;
    bluePos = blueTarget;
    blueSliding = false;
  }
}

if(AI==true && blueTurn == true && delay<0){
  diceN = int(random(1,7));
        if (bluePos + diceN <= 48) {
        blueTarget = bluePos + diceN;
        blueMoving = true;
      }
     
      redTurn = true;
      blueTurn = false;
      delay = 10;
    
}

}

//-----------------------------------------------------------------------Clicks
void gameClick() {
  if (mouseX>width/2-25 && mouseX<width/2+25 && mouseY>525 && mouseY<575) {
    diceN = int(random(1, 7));

    if (redTurn && delay < 0) {
      if (redPos + diceN<=48) {
        redTarget += diceN;
        redMoving = true;
      }
      redTurn = false;
      blueTurn = true;
      
      delay = 10;
    }
    if (blueTurn && delay < 0 && AI == false) {
      if (bluePos + diceN <= 48) {
        blueTarget = bluePos + diceN;
        blueMoving = true;
      }
     
      redTurn = true;
      blueTurn = false;
      delay = 10;
    }
  }
}

//---------------------------------------------------Ladder code
void ladder(int bx, int by, int ex, int ey) {
  
  stroke(#AA6F30);
  strokeWeight(10);
  line(bx+25, by+50, ex+25, ey+50);
  line(bx+75, by+50, ex+75, ey+50);
  
  line(bx+25,by+50,bx+75,by+50);
  line(ex+25,ey+50,ex+75,ey+50);
}

void snake(int bx, int by, int ex, int ey){
  stroke(#30AA35);
  strokeWeight(20);
  line(bx+50,by+50,ex+50,ey+50);
}

void checkLadder() {
  for (int i=0; i<ladderStart.length; i++) {
    if (redPos == ladderStart[i]) {
      redClimbing = true;
      redTarget = ladderEnd[i];

      float sx = x[redPos] + 50;
      float sy = y[redPos] + 30;
      float tx = x[redTarget] + 50;
      float ty = y[redTarget] + 30;

      float dx = tx - sx;
      float dy = ty - sy;
      float len = sqrt(dx*dx + dy*dy);

      redvx = dx / len;
      redvy = dy / len;
    }

    if (bluePos == ladderStart[i]) {
      blueClimbing = true;
      blueTarget = ladderEnd[i];

      float sx = x[bluePos] + 50;
      float sy = y[bluePos] + 60;
      float tx = x[blueTarget] + 50;
      float ty = y[blueTarget] + 60;

      float dx = tx - sx;
      float dy = ty - sy;
      float len = sqrt(dx*dx + dy*dy);

      bluevx = dx / len;
      bluevy = dy / len;
    }
  }
}


void checkSnake() {
  for (int i=0; i<snakeStart.length; i++) {
    if (redPos == snakeStart[i]) {
      redSliding = true;
      redTarget = snakeEnd[i];

      float sx = x[redPos] + 50;
      float sy = y[redPos] + 30;
      float tx = x[redTarget] + 50;
      float ty = y[redTarget] + 30;

      float dx = tx - sx;
      float dy = ty - sy;
      float len = sqrt(dx*dx + dy*dy);

      redvx = dx / len;
      redvy = dy / len;
    }

    if (bluePos == snakeStart[i]) {
      blueSliding = true;
      blueTarget = snakeEnd[i];

      float sx = x[bluePos] + 50;
      float sy = y[bluePos] + 60;
      float tx = x[blueTarget] + 50;
      float ty = y[blueTarget] + 60;

      float dx = tx - sx;
      float dy = ty - sy;
      float len = sqrt(dx*dx + dy*dy);

      bluevx = dx / len;
      bluevy = dy / len;
    }
  }
}




void dice() {
  fill(255);
  stroke(0);
  strokeJoin(ROUND);
  strokeWeight(5);
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
