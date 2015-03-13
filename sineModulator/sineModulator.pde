Rectangle myRectangle;
float pct,angle,modulatorAngle;

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
  modulatorAngle = 0;
}

void draw(){
  
  background(100);
  
  //  1st get the modulation amount:
  modulatorAngle += 0.03f;
  float sinOfModulatorAngle = sin(modulatorAngle);
  float modulatorPct = 0.5f * sinOfModulatorAngle + 0.5f;
	
  //  2nd get the carier amount and multiply by modulation:
  angle += 0.04f;
  float sinOfAngle = sin(angle) * modulatorPct; // <--- this is amplitude modulation;
	
  pct = 0.5f * sinOfAngle+ 0.5f;	

  myRectangle.interpolateByPct(pct);	// go between pta and ptb
  myRectangle.draw();

}
