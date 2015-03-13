int x = 400;
int y = 300;
float speedX = 3 + random(4);
float speedY = 1 + random(10);
float distY;
PImage img;

void grafica (int x, int y){
  
  ellipse(x,y,100,100);
}

void setup (){
    
  size(800,600);
  
}

void draw (){
    
  background(0,0,0);
 
  y += speedY;
  grafica(x,y);
   
  if( mouseY <= (y + 50) && (mouseX < x+50 && mouseX > x-50)) speedY -= 4;
  if(y + 50 >= height ) speedY -= 1;
  
  speedY += 0.118886;
    
}

