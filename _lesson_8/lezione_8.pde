import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import controlP5.*;

ControlP5 controlP5;
RadioButton r;
controlP5.Button p;

int HOW_MANY = 10;
ArrayList sequence = new ArrayList(HOW_MANY);
Menu m;
PImage bck;

Minim minim;
AudioInput in;
ReverseEffect reffect;

boolean play = false;
int counter = 0;
int sliderValue = 100;

void setup(){

  minim = new Minim(this);
  in = minim.getLineIn(Minim.STEREO, 512);

  size(850,600);

  controlP5 = new ControlP5(this);
  r = controlP5.addRadioButton("radioButton",800,0);  
  r.setColorForeground(color(120));
  r.setColorActive(color(#cccccc));
  r.setColorLabel(color(0));
  r.setSpacingRow(39);
  
  r.addItem("row 0",0);
  r.addItem("row 1",1);
  r.addItem("row 2",2);
  r.addItem("row 3",3);
  r.addItem("row 4",4);
  r.addItem("row 5",5);
  r.addItem("row 6",6);
  r.addItem("row 7",7);
  r.addItem("row 8",8);
  r.addItem("row 9",9);
  
  p = controlP5.addButton("playBtn",0,800,504,100,46);
  controlP5.addSlider("sliderValue",1,100,1,650,552,200,50);
  bck = loadImage(dataPath("bck.png"));
  m = new Menu(0,502);
  
  reffect = new ReverseEffect();
  
   for(int i=0; i<HOW_MANY;i++){
    sequence.add(new PlayerQue(0,i));
  }
  
}
void draw(){
  
  background(bck);
  m.update();
  m.display();

  for(int i=0; i<sequence.size();i++){
    PlayerQue temp = (PlayerQue)sequence.get(i);
    temp.playUpdate();
    temp.display();
  }

  
}
void addItem(Item it){
  
  PlayerQue temp = (PlayerQue)sequence.get(counter);
  temp.addItem(it);

}
void mousePressed(){

  m.pressed();

}
public void controlEvent(ControlEvent theEvent) {
  if(theEvent.isGroup()) {
    for(int i=0;i<theEvent.group().arrayValue().length;i++) {
      boolean n = ((RadioButton)theEvent.group()).getItem(i).getState();
        if(n){
          counter = (int)((RadioButton)theEvent.group()).getItem(i).internalValue();
      }
    }
    
  }else if(theEvent.isController()){
    if(theEvent.controller().name()=="playBtn" && !play){
      ((controlP5.Button)theEvent.controller()).setLabel("pauseBtn");
      for(int i = 0;i<sequence.size();i++){
        PlayerQue temp = (PlayerQue)sequence.get(i);
        temp.play = true;
        play = true;
      }
    }else if(theEvent.controller().name()=="playBtn" && play){
      ((controlP5.Button)theEvent.controller()).setLabel("playBtn");
       for(int i = 0;i<sequence.size();i++){
        PlayerQue temp = (PlayerQue)sequence.get(i);
        temp.play = false;
        play = false;
      }
    }
    
  }
}
void stop()
{
  // always close Minim audio classes when you finish with them
  for(int i=0; i<sequence.size();i++){
    PlayerQue temp = (PlayerQue)sequence.get(i);
    temp.stop();
  }
  // always stop Minim before exiting
  minim.stop();
  super.stop();
}



