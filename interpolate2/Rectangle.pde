class Rectangle{
		
  float   pct;	// what pct are we between "a" and "b"
  PVector pos = new PVector();
  PVector posa = new PVector();
  PVector posb = new PVector();
  
  Rectangle(){

  }

//------------------------------------------------------------------
void draw() {
    fill(255);
    stroke(0,255,0);
    rectMode(CENTER); // center around the position
    rect(pos.x, pos.y, 20,20);
}

//------------------------------------------------------------------
void interpolateByPct(float myPct){

	pct = myPct;

	pos.x = (1-pct) * posa.x + (pct) * posb.x;

	pos.y = (1-pct) * posa.y + (pct) * posb.y;

}
}
