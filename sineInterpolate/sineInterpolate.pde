Rectangle myRectangle;
float pct,angle;

void setup(){
  
  size(600,400);
  
  myRectangle = new Rectangle();
  myRectangle.posa.x = 0;
  myRectangle.posa.y = 50;
  myRectangle.posb.x = 600;
  myRectangle.posb.y = 50;
  myRectangle.interpolateByPct(0);	// start at 0 pct
  pct = 0;	
  angle = 0;
}

void draw(){
  
  background(100);
  
  angle += 0.05f;
  float sinOfAngle = sin(angle);			// get the sin of phase
  pct = 0.5f * sinOfAngle + 0.5f;			// now get it into range [0-1]

  myRectangle.interpolateByPct(pct);	// go between pta and ptb
  myRectangle.draw();

}
