class PointRecorder{
  
  ArrayList pts = new ArrayList();
  int maxNumPts;
  
PointRecorder(){
	maxNumPts = 200;
}

void draw() {
	
	noFill();
	beginShape();
	for (int i = 0; i < pts.size(); i++){
                PVector temp = (PVector) pts.get(i);
		vertex(temp.x, temp.y);
	}
	endShape();
}


void addPoint(PVector pt) {
	pts.add(pt);
	if (pts.size() > maxNumPts){
		pts.remove(0);
	}
}
}
