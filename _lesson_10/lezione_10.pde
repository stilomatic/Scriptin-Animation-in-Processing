import processing.opengl.*;
import javax.media.opengl.*;

PGraphicsOpenGL pgl;
GL gl;

PGraphics myTexture;
int a = 0;
int HOW_MANY = 120;

void setup(){
  
    size(600,400,OPENGL);
    
    pgl = (PGraphicsOpenGL) g;
    gl = pgl.gl;
    
     myTexture = createGraphics(100,100,P2D);
    
}

void draw(){
  
  background(80);
  renderTexture();
  
  gl = pgl.beginGL();
  gl.glEnable( GL.GL_BLEND );
  gl.glBlendFunc(GL.GL_SRC_ALPHA,GL.GL_ONE);
  
  int i = 0;
  int x = 1;
  int y = 1;
  
  for(i = 0; i < HOW_MANY; i++){
    pushMatrix();
    translate(mouseX+(x*50),mouseY+(y*50),(width/2)-mouseY);
    drawPanel();
    popMatrix();
    if(x%10 == 0){
      x=0;
      y++;
    }
    x++;
  }
  pgl.endGL();
  a+=5;
}
void drawPanel(){
    
  rotateY(radians(a));
  noStroke();
  beginShape();
  texture(myTexture);
  vertex(0, 0, 0, 0);
  vertex(0, 100, 100, 0);
  vertex(100, 100, 100, 100);
  vertex(100, 0, 0, 100);
  vertex(0, 0, 0, 0);
  endShape();

}


void renderTexture(){
    myTexture.beginDraw();
    myTexture.noStroke();
    myTexture.fill(0);
    myTexture.rect(0,0,100,100);
    myTexture.fill(100,100,0);
    myTexture.ellipseMode(CENTER);
    myTexture.rotate(radians(a));
    myTexture.ellipse(50,50,100,30);
    myTexture.endDraw();
}
