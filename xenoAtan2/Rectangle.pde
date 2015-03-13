class Rectangle{
  
  float catchUpSpeed,angle;
  PVector pos = new PVector();
  
  Rectangle(){
	catchUpSpeed = 0.03f;
        angle = 0.0f;
  }

//------------------------------------------------------------------
void draw() {
  
    fill(255);
    stroke(0,255,0);
    rectMode(CENTER); // center around the position
    
    translate( pos.x,  pos.y);
    angle = atan2(mouseY-pos.y, mouseX-pos.x);
    rotate(angle);
    rect( 0, 0, 20, 20);
}

//------------------------------------------------------------------
  void xenoToPoint(float catchX, float catchY){
    
    pos.x = catchUpSpeed * catchX + (1-catchUpSpeed) * pos.x; 
    pos.y = catchUpSpeed * catchY + (1-catchUpSpeed) * pos.y; 

    
  }
}
