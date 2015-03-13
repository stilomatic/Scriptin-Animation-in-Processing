import processing.opengl.*;
import javax.media.opengl.*;
import com.sun.opengl.util.texture.*; 
import krister.Ess.*;

PGraphicsOpenGL pgl;
GL gl;

EssUtil myEss;
FFT values;
int HOW_MANY = 256; // or 128
Texture bck;
Texture grphx;
Flare [] flares = new Flare[HOW_MANY];

float space;
int radius = 20;
float myConst = 2.6;

void setup() {
  
  size(600,400,OPENGL);
  colorMode( RGB, 1.0 );

  Ess.start(this);
  myEss = new EssUtil();
  
  try { grphx=TextureIO.newTexture(new File(dataPath("flare.png")),true); } 
  catch(Exception e) { println(e); } 

  for (int i=0; i<HOW_MANY; i++) {
      flares[i] = new Flare();
  }
  
  space = 1.40625;
  frameRate(30);
  
}

void draw() {
  
  background(100);
  pgl = (PGraphicsOpenGL) g;  
  gl = pgl.beginGL();  
   
  gl.glEnable( GL.GL_BLEND );
  gl.glBlendFunc(GL.GL_SRC_ALPHA,GL.GL_ONE);
  
  values = myEss.exist();

  for (int i=0; i < HOW_MANY; i++) {
    float temp=max(0, 30+values.spectrum[i]*1024);
    flares[i].render(getCirclePos((temp*myConst),(space*i)),grphx);
  }
  
  pgl.endGL();
  
}

PVector getCirclePos(float _value,float _degrees){

  float r = radians(_degrees);
  float x = (width*0.5) + ((radius+_value)*sin(r));
  float y = (height*0.5) + ((radius+_value)*cos(r));
  float z = values.spectrum[0] * 300;
  PVector result = new PVector(x,y,z);
  
  return result;
}

public void stop() {
  Ess.stop();
  super.stop();
}
