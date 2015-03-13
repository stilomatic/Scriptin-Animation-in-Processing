float angle, radius;
PointRecorder pr;

void setup(){
  
  size(600,400);
  angle = 0;
  radius = 50;
  pr = new PointRecorder();
}

void draw(){
        
  background(100);
  
  angle += 0.07f;
  radius += 0.2f;
        
  float origX = width/2;
  float origY = height/2;
		
  float xPos = origX + radius * cos(angle);
  float yPos = origY + (radius * sin(angle)) * -1; // since 0,0 is top left corner....
  
  pr.addPoint( new PVector(xPos, yPos, 0.0f) );
  
  fill(255,255,0);
  ellipse(xPos, yPos, 10, 10);
  
  stroke(255,255,0);
  pr.draw();
  
}
