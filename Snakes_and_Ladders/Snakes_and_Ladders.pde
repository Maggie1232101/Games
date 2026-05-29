// final project
// snakes and ladders
PFont font;

float redx, redy, bluex, bluey;
boolean blueClimbing = false;
boolean redClimbing = false;
boolean blueSliding = false;
boolean redSliding = false;

float bluevx, bluevy, redvx, redvy;

int delay = 10;

int redPos =0;
int bluePos =0;

int [] ladderStart = {2,12,21,29};
int [] ladderEnd = {10,25,35,42};
int [] snakeStart = {22,30,40,47};
int [] snakeEnd = {7,23,14,1};

boolean blueMoving = false;
boolean redMoving = false;
int blueTarget = 0;
int redTarget = 0;


int diceN;

//blue and red
boolean redTurn = false;
boolean blueTurn = false;
boolean redWin = false;
boolean blueWin = false;

//modes
int mode;
final int GAME = 0;
final int INTRO = 1;
final int GAMEOVER = 2;

int [] x;
int [] y;

int tempx, tempy, tx;
int space;

void setup(){
  size(800,800);
  mode = INTRO;
  
  font = createFont("Brown Cookies.otf",10);
  
  blueTurn = true;
  
  diceN=3;
  
  x = new int [49];
  y = new int [49];
  
  tempx = 50;
  tempy = 650;
  tx = 1;
  
  int i = 0;
  while(i<49){
    x[i] = tempx;
    y[i] = tempy;
    tempx=tempx+100*tx;
    if(tempx>=700){
      tempx =tempx-100;
      tx=-1;
      tempy = tempy-100;
    }
    if(tempx<50){
      tempx = tempx+100;
      tx = 1;
      tempy = tempy-100;
    }
    i++;
  }
  
  
}

void draw(){
  if(mode == INTRO)intro();
  if(mode == GAME) game();
  if (mode == GAMEOVER)gameover();

}

void board(){
  
 int i = 0;
 while(i<49){
   fill(255);
   square(x[i],y[i],100);
   fill(0);
   text(i+1, x[i]+10, y[i]+20);
   i++;
   
 }
      
}
    
  
