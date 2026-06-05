//space invaders
//invaders
int [] x;
int [] y;
boolean [] alive;
int n;
int tempx, tempy;

//modes
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//game random
int level = 0;
int clickDelay = 10;

//font
PFont game;

//-----------------------------------------------------------------------------setup
void setup() {
  size(800, 600);
  game = createFont("Gameplay.ttf", 20);
  textFont(game);
  mode = INTRO;

  //array of invaders
  n = 55;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];

  tempx = 50;
  tempy = 50;

  int i = 0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    tempx = tempx+75;
    if (tempx==width) {
      tempy += 75;
      tempx = 50;
    }
    i++;
  }
  }

  void draw() {
    if (mode == INTRO)intro();
    if (mode == GAME)game();
    if (mode==PAUSE)pause();
    if (mode==GAMEOVER)gameover();
  }

  void invader(int x, int y) {
  }
