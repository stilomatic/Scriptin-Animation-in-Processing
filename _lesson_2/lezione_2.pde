int x;
int y;
int size = 60;
int space = 1;
int doveX, doveY;
void setup(){
  size(600,600);
}
void draw(){
  background(90);
  doveX -= (doveX-mouseX)/16;
  doveY -= (doveY-mouseY)/16;
  x = 0;
  y = 20;
  for(int i = 1; i < 10; i++){
      fill(255,100,0);
      noStroke();
      ellipse(x,y,size,size); 
      if((i%3) == 0){  
        x = doveX;
        y += doveY+size+space;
      }else{
        x += doveX+size+space;
      }  
  }
}
