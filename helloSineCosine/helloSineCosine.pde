float phase = 0;
void setup(){
  size(600,400);
}
void draw(){
  
  background(100);
  
  phase +=  0.02f; 
        
	fill(0xeeeeee);
	ellipse(100,100,50,50);
	
	fill(0,0,0);
	ellipse(100 + 50 * cos(phase), 100 + 50 * sin(phase) * -1, 3, 3);    // we do -1 here because the top point is 0,0....

	
	stroke(255,0,255);
	line(100,100,100 + 50 * cos(phase), 100);
	stroke(0,130,255);
	line(100,100,100, 100 + 50 * sin(phase) * -1);
	
	fill(0xeeeeee);
	rect(200,50,220,40);
	
	
	// draw a visulization of sin: 
	fill(0,130,255);
	float sinVal = sin(phase);  // gives us between -1 and 1
								// it's nicer to convert this between 0 and 1
	float sinPct = sinVal * 0.5f + 0.5f;
	float xVal = 200 + 200* sinPct;
	rect(xVal, 50, 20,20);
	
	fill(255,0,255);
	float cosVal = cos(phase);  // gives us between -1 and 1
	// it's nicer to convert this between 0 and 1
	float cosPct = cosVal * 0.5f + 0.5f;
	xVal = 200 + 200* cosPct;
	rect(xVal, 70, 20,20);
	
	
	String cosString = "cos(angle): " + cos(phase);
	String sinString = "sin(angle): " + sin(phase);
	
	
	/*
	ofSetColor(0,130,255);
	ofDrawBitmapString(sinString, 200,120);
	
	ofSetColor(255,0,255);
	ofDrawBitmapString(cosString, 200,140);
        */

}
