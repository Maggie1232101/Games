float bx, by, px, py, vx, vy,v;
int bd, pd;

int lives, score;

int clickDelay;
boolean left, right;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;

//brick variables
boolean[] alive;
int [] x;
int [] y;
int n;
int tempx, tempy;

//gameover stuff ----------------------------
boolean win, lose;
PImage[] creekGif;
PImage[] vectorGif;
int numberFramesV,fV;
int numberFrames,f;

//font
PFont groove;

//setup---------------------------------------------------------------------s
void setup() {
  size(800, 600);
  groove = createFont("Groovy Clouds.otf",50);
  textFont(groove);
  mode = INTRO;
  left = right = win = lose = false;
  px = width/2;
  bx = width/2;
  by = height/2;
  vy = 2;
  bd = 20;
  pd = 150;
  v=1;
  lives=3;
  f=0;
  fV=0;

  //set up array of bricks
  n = 40;
  x = new int[n];  //instantiation
  y = new int[n];
  alive = new boolean[n];

  tempx = 50;
  tempy = 50;

  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx+75;
    if (tempx==width) {
      tempy = tempy+75;
      tempx=50;
    }
    i++;
  }
  
  numberFrames = 44;
  creekGif = new PImage[numberFrames];
  
  int l = 0;
  while(l<numberFrames){
    
    creekGif[l] = loadImage("frame_"+l+"_delay-0.04s.gif");
    l++;
  }
  
  numberFramesV = 13;
  vectorGif = new PImage[numberFramesV];
  
  int idk = 0;
  while(idk<numberFramesV){
    vectorGif[idk] = loadImage("frame_"+idk+"_delay-0.08s.gif");
    idk++;
  }
}

void draw() {
  if (mode == INTRO)intro();
  if (mode == GAME)game();
  if (mode == GAMEOVER)gameover();
  if (mode == PAUSE)pause();
}
