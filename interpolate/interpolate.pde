Rectangle myRectangle;
float pct;

void setup(){
  
  size(600,400);
  
  myRectangle = new Rectangle();
  myRectangle.posa.x = 0;
  myRectangle.posa.y = 50;
  myRectangle.posb.x = 600;
  myRectangle.posb.y = 350;
  myRectangle.interpolateByPct(0);	// start at 0 pct
  pct = 0;	
  
}

void draw(){
  
  background(100);
  
  pct += 0.00166f;                      // increase by a certain amount
  if (pct > 1) {
    pct = 0;	                        // just between 0 and 1 (0% and 100%)
  }	

  myRectangle.interpolateByPct(pct);	// go between pta and ptb
  myRectangle.draw();

}
