class Quadrato{
  
  float x,y;
  float speedx = random(6);
  float speedy = random(6);
  float rectsize = 40;
  color current;
  
  Quadrato(){
     
    x = width*0.5;
    y = height*0.5;

  }
  
  void exist(){
     
   x = x+speedx;
   y = y+speedy;
  
  current = color(int(x),int(y),255,100);

  if(x<0 || x>width-rectsize){
    speedx = speedx*-1;
  }
  if(y<0 || y>height-rectsize){
    speedy = speedy*-1;
  }
   noStroke();
   fill(current);
   rect(x,y,rectsize,rectsize);
  }

}
