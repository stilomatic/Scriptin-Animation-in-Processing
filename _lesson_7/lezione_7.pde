import ddf.minim.*;
import ddf.minim.signals.*;
import controlP5.*;

ControlP5 controlP5;

Minim minim;
AudioOutput out;
SineWave sine;

int quantiQuadrati = 4;
ArrayList quadrati = new ArrayList();

void setup(){
  
  size(1024,600);
   
  minim = new Minim(this);
  out = minim.getLineOut(Minim.STEREO);
  
  controlP5 = new ControlP5(this);
  controlP5.addSlider("quanti",1,10,4,20,20,200,30);
  createQuadrati();
  
}

void draw(){
  
  background(0);
  
  for(int j = 0;j<quantiQuadrati;j++){
    Quadrato tmp = (Quadrato)quadrati.get(j);
    tmp.exist();
  }
    
}

void createQuadrati(){
  out.close();
  out = minim.getLineOut(Minim.STEREO);
  quadrati.clear();
  for(int j = 0;j<quantiQuadrati;j++){
    quadrati.add(new Quadrato());
  } 
}

void quanti(int theValue) {
  quantiQuadrati = theValue;
  createQuadrati();
}

void stop()
{
  out.close();
  minim.stop();
  super.stop();
}


