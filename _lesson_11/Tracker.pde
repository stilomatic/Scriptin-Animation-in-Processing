class Tracker{

  OpenCV opencv;
  int w = width;
  int h = height;
  int threshold = 80;
  boolean find = true;
  ArrayList oBody;
  ArrayList oBlobs;
  Tracker(){
    
  }
  
  void init(PApplet n){
    opencv = new OpenCV(  );
    opencv.capture(w,h);
     oBody = new ArrayList();
     oBlobs = new ArrayList();
  }

  void exist(){
    
    if(oBody!=null){
      for(int i=0;i<oBody.size();i++){
      box2d.destroyBody((Body)oBody.get(i));
      }
      oBlobs.clear();
      oBody.clear();
    }
   
    opencv.read();
    opencv.flip( OpenCV.FLIP_HORIZONTAL );
    opencv.absDiff();
    opencv.threshold(threshold);

    Blob[] blobs = opencv.blobs( 300, w*h/3, 20, true );
    
    for( int i=0; i<blobs.length; i++ ) {
        // Rectangle bounding_rect	= blobs[i].rectangle;
        Point[] points = blobs[i].points;
        if ( points.length>300) {
             
            EdgeChainDef edges = new EdgeChainDef();
             
            for( int j=0; j<points.length; j+=10 ) {
                // The edge point in our window
                Vec2 screenEdge = new Vec2(points[j].x,points[j].y);
                Vec2 edge = box2d.screenToWorld(screenEdge);
                edges.addVertex(edge);
                oBlobs.add(screenEdge);
            }
            edges.setIsLoop(false);   // We could make the edge a full loop
            edges.friction = 0.0;    // How much friction
            edges.restitution = 3.7; // How bouncy

            BodyDef bd = new BodyDef();
            bd.position.set(0.0f,0.0f);
            Body body = box2d.world.createBody(bd);
            body.createShape(edges);  
            oBody.add(body);
        }     
    }
  }
  
  void display(){

    strokeWeight(1);
    stroke( 100 );
    fill(100,100,100,100);
    beginShape();
    for( int i=0; i<oBlobs.size(); i++ ) {
            Vec2 p = (Vec2)oBlobs.get(i);
            vertex( p.x, p.y );            
    }
    endShape(CLOSE); 
  }
  
  
  OpenCV getOpenCV(){
    return opencv;
  }
 
}
