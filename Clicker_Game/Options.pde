void options() {
  background(#CCA2D1);
  fill(255);
  tactC(275, 300, 200);
  tactC(500, 300, 200);
  tactC(725, 300, 200);
  imageMode(CORNER);
  image(styre, 175, 200, 200, 200);
  image(mtyre, 400, 200, 200, 200);
  image(htyre, 625, 200, 200, 200);
  stroke(0);
  circle(500,600,thick);
  imageMode(CENTER);
  if(med==true)image(mtyre,500,600,thick,thick);
  else if(soft==true)image(styre,500,600,thick,thick);
  else if(hard==true)image(htyre,500,600,thick,thick);
  
  tactR(100,50,100,50);
  textSize(20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("BACK",100,50);
  
  //slider
  stroke(0);
  line(200,500,200,750);
  circle(200,sliderY,thick/2);
}

void optionClick() {
  if(dist(mouseX,mouseY,275,300)<100){
    soft=true;
    med=false;
    hard=false;
    println("soft");
  }
  else if(dist(mouseX,mouseY,500,300)<100){
    med=true;
    soft=false;
    hard=false;
  }
  else if (dist(mouseX,mouseY,725,300)<100){
    hard=true;
    soft=false;
    med=false;
  }
  if(mouseX>50 && mouseX<150 && mouseY>25 && mouseY<75)mode=INTRO;
}

void tactC(float x, float y, float d) {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    stroke(200);
  } else stroke(0);
  circle(x,y,d);
}
