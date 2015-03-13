Rectangle myRectangle;

void setup(){
  size(600,400, P3D);
  
  myRectangle = new Rectangle();
  myRectangle.pos.x = width/2;
  myRectangle.pos.y = height/2;
  
}

void draw(){
  
  background(100);
  myRectangle.xenoToPoint(mouseX, mouseY);
  myRectangle.draw();

}
