//Clicker game
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
final int OPTIONS = 4;

PFont font;
PImage styre;
PImage mtyre;
PImage htyre;

boolean med,soft,hard;

//Game variables
float x,y,sliderY,thick;
int score, lives;
float vx,vy,v;
int highscore;

void setup() {
  sliderY = 575;
  v=1;
  med = hard = false;
  soft = true;
  font = createFont("Super Mindset.ttf",30);
  textFont(font);
  
  styre = loadImage("Adobe Express - file.png");
  mtyre = loadImage("Medium tyre f1.png");
  htyre = loadImage("Hard tyre f1.png");
  
  
  size(1000,800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  vx = 2;
  vy = 2;
  score = 0;
  lives = 3;
}

void draw() {
  
  thick = map(sliderY,500,750,50,250);
  
  if (mode == INTRO)intro();
  else if (mode == GAME)game();
  else if (mode == GAMEOVER)gameover();
  else if (mode == PAUSE)pause();
  else if(mode==OPTIONS)options();
  else {
    println("ERROR mode = " + mode);
  }
}
