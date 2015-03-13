class Item extends Button{
  
  int ID;
  int sizeW,sizeH;
  
  AudioRecorder recorder;
  AudioPlayer player;
 // File file;

  Item(int id, int ix, int iy,int isizeW, int isizeH, color icolor, color ihighlight){
    ID = id;
    //file = new File("myrec"+ID+".wav");
    x = ix;
    y = iy;
    sizeW = isizeW;
    sizeH = isizeH;
    basecolor = icolor;
    highlightcolor = ihighlight;
    currentcolor = basecolor;
  }
  
  void update() 
  {
    if(locked && player == null){
      highlightcolor = color(#FF6600);
    }else{
      highlightcolor = color(#FF0066);
    }
    if(over()) {
      currentcolor = highlightcolor;
    } 
    else {
      currentcolor = basecolor;
    }
  }
    
  boolean over() 
  {
    if( overRect(x, y, sizeW, sizeH) ) {
      over = true;
      return true;
    } else {
      over = false;
      return false;
    }
  }

  void display() 
  {
    noStroke();
    fill(255);
    rect(x, y, sizeW, sizeH);
    fill(currentcolor);
    rect(x+2, y+2, sizeW-4, sizeH-4);
  }
  
  void play(){
    player = minim.loadFile("myrec"+ID+".wav", 1102);
    player.play();
  }
  void record(){
        //file.delete();
        recorder = minim.createRecorder(in, "myrec"+ID+".wav", true);  
        recorder.beginRecord();
  }
  void stopRecord(){
        recorder.endRecord();
        recorder.save();
  }
}

