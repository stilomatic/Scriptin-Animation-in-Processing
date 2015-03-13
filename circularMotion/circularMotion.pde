float angle;

void setup(){
  
  size(600,400);
  angle = 0;
  
}

void draw(){
        
  background(100);
  
  angle += 0.03f;
        
  float origX		= 100;
  float origY		= 100;
  float radius	= 50;
		
  float xPos = origX + radius * cos(angle);
  float yPos = origY + (radius * sin(angle)) * -1; // since 0,0 is top left corner....
	
  fill(255,255,0);
  ellipse(xPos, yPos, 10, 10);

}
