class Rectangle{
  
  float catchUpSpeed;
  PVector pos = new PVector();
  
  Rectangle(){
	catchUpSpeed = 0.03f;
  }

//------------------------------------------------------------------
void draw() {
    fill(255);
    stroke(0,255,0);
    rectMode(CENTER); // center around the position
    rect(pos.x, pos.y, 20,20);
}

//------------------------------------------------------------------
  void xenoToPoint(float catchX, float catchY){
    pos.x = catchUpSpeed * catchX + (1-catchUpSpeed) * pos.x; 
    pos.y = catchUpSpeed * catchY + (1-catchUpSpeed) * pos.y; 
  }
}
