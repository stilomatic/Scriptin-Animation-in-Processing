int HOW_MANY = 50;

int [] mioArray = {0,1,2,3,4,5};

int [] speedX = new int[HOW_MANY];
int [] speedY = new int[HOW_MANY];
int [] myX = new int[HOW_MANY];
int [] myY = new int[HOW_MANY];
int mySize = 30;

void setup (){
  
  size(600,400);
  
  for(int i = 0; i < HOW_MANY; i++){ 
    myX[i] = int(random(width));
    myY[i] = int(random(height));
  
    speedX[i] = int(1+random(3));
    speedY[i] = int(1+random(3));
  }
}

void draw (){
  
  background(0);
  
 // println(speedX[2]);
  
  for(int i = 0; i < HOW_MANY; i++){  
  myX[i] += speedX[i];
  myY[i] += speedY[i];
  
  fill(255,80,0);
  ellipse(myX[i],myY[i],mySize,mySize);

  if(myX[i] > width || myX[i] < 0) speedX[i] = speedX[i]*-1;
  
  if(myY[i] > height || myY[i] < 0) speedY[i] = speedY[i]*-1;
  
  }

}
