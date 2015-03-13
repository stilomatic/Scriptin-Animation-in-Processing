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
  pr.draw();
  
}

void mouseDragged(){
  
  pr.addPoint(new PVector(mouseX,mouseY));

}
