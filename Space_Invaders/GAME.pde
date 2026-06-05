void game(){
  clickDelay--;
  background(0);
  
  //invaders
  int i = 0;
  while(i<n){
    if(alive[i] == true){
      manageInvader(i);
    }
    i++;
  }
}

void gameClick(){
  
}

void manageInvader(int i){
  invader(x[i],y[i]);
  if(dist(x[i],y[i],
}
