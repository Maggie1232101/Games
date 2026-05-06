//pong 

PFont groove;

float leftx,lefty,leftd,rightx,righty,rightd,ballx,bally,balld,ld,rd;
float vx,vy,v;

boolean wkey,skey,upkey,downkey,AI;

int redScore,blueScore;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;

void setup(){
  groove = createFont("Wonderful Snowflake.otf",50);
  
  mode = INTRO;
 
  
  size(800,600);
  
  v=1;
  
  lefty=righty=bally=height/2;
  leftx=0;
  rightx=width;
  ballx=width/2;
 
  leftd=150;
  rightd=150;
  balld=50;
  wkey=skey=upkey=downkey=false;
}

void draw(){
  
  if(mode == INTRO)intro();
  if(mode==GAME)game();
  if(mode==GAMEOVER)gameover();
}
