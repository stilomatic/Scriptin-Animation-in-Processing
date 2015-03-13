Rectangle myRectangle;
float pct;

void setup(){
  
  size(600,400);
  
  myRectangle = new Rectangle();
  myRectangle.posa.x = 0;
  myRectangle.posa.y = 50;
  myRectangle.posb.x = 600;
  myRectangle.posb.y = 50;
  myRectangle.interpolateByPct(0.0f);	// start at 0 pct
  pct = 0.0f;	
  
}

void draw(){
  
  background(100);
  pct += 0.01f;							// increase by a certain amount
  if (pct > 1) pct = 0;					// just between 0 and 1 (0% and 100%)
  myRectangle.interpolateByPct(pct);
  myRectangle.draw();

}
