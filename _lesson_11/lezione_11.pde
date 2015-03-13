import pbox2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;
import java.awt.*;
import hypermedia.video.*;

PBox2D box2d;
Tracker tracker;
Emitter emitter;

ArrayList boundaries;

boolean bImage = false;
boolean bMouse = false;
	
void setup() {
   
  size(screen.width, screen.height);
  background(255);
    
  tracker = new Tracker();
  tracker.init(this);
  
  box2d = new PBox2D(this);
  box2d.createWorld();
  
  box2d.world.setContactListener(new CustomListener());
  emitter = new Emitter();
  boundaries = new ArrayList();
    // Add a bunch of fixed boundaries
  boundaries.add(new Boundary(0,height-10,width,10));
  boundaries.add(new Boundary(0,0,width,10));
  boundaries.add(new Boundary(width-10,0,10,height+100));
  boundaries.add(new Boundary(0,0,10,height+100));
  
}
	
void draw() {
  
    background(255);
    box2d.step();
    //box2d.setGravity(0,0);
  if(bImage){
      //OpenCV t = tracker.getOpenCV();
      //image( t.image(OpenCV.GRAY), 0, 0 );
      tracker.display();
  }
  tracker.exist();
  emitter.exist();
    // Display all the boundaries
  for (int i = 0; i < boundaries.size(); i++) {
    Boundary wall = (Boundary) boundaries.get(i);
    wall.display();
  }
}

void keyPressed(){

  if(key == 'i') bImage = !bImage;
   if(key == 'm') bMouse = !bMouse;
  if(key == '+') tracker.threshold += 2;
  if(key == '-') tracker.threshold -= 2;
 
}

