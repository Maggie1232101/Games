void gameover() {
  background(#FFB2B3);
  fill(255);
  strokeWeight(10);
  tactR(width/2, height/2 +150, 200, 100);
  fill (0);
  textAlign(CENTER, CENTER);
  text("BACK TO HOME", width/2, height/2 +150);
  strokeWeight(5);
  text ("SCORE: " +score, width/2, height/2 -150);
  text ("HIGHSCORE: " +highscore, width/2, height/2 -100);
  if (score>=highscore){
    highscore = score;
    fill(0);
    text("yayyyyyy", width/2, height/2 -50);
    println("yayy");
  }
}

void gameoverClick() {
 if (mouseX < width/2 +100 && mouseX >width/2 -100 && mouseY < height/2 +200 && mouseY > height/2 +100){
   mode = INTRO;   
 }
}
