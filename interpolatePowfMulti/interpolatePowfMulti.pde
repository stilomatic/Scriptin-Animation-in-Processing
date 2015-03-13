Rectangle [] myRectangle = new Rectangle[10];
float pct;

void setup(){
  
  size(600,400);
  
  for(int i = 0; i < 10; i++){
    myRectangle[i] = new Rectangle();
    myRectangle[i].posa.x = 0;
    myRectangle[i].posa.y = 10+(20*i);
    myRectangle[i].posb.x = 600;
    myRectangle[i].posb.y = 10+(20*i);
    myRectangle[i].shaper = 0.4 + 0.2 * i;
    myRectangle[i].interpolateByPct(0.0f);	// start at 0 pct
  }
  pct = 0.0f;	
  
}

void draw(){
  
  background(100);
  
  pct += 0.01f;							// increase by a certain amount
  if (pct > 1) pct = 0;
  for(int i = 0; i < 10; i++){					// just between 0 and 1 (0% and 100%)
  myRectangle[i].interpolateByPct(pct);
  myRectangle[i].draw();
  }

}
