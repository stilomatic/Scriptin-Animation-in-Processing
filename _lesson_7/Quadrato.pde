class Quadrato{
  
  float x,y;
  float speedx = random(6);
  float speedy = random(6);
  float rectsize = 40;
  color current;
  SineWave sine;
  
  Quadrato(){
     
    x = width*0.5;
    y = height*0.5;
   
   sine = new SineWave(440, 0.5, out.sampleRate());
   // set the portamento speed on the oscillator to 200 milliseconds
   sine.portamento(200);
   // add the oscillator to the line out
   out.addSignal(sine); 

  }
  
  void exist(){
     
   x = x+speedx;
   y = y+speedy;
  
  current = color(int(x),int(y),255,100);
  
  float freq = map(y, 0, height, 150, 6);
  sine.setFreq(freq*(quantiQuadrati*0.5));
  float pan = map(x, 0, width, -1, 1);
  sine.setPan(pan);

  if(x<0 || x>width-rectsize){
    speedx = speedx*-1;
  }
  if(y<0 || y>height-rectsize){
    speedy = speedy*-1;
  }
   noStroke();
   fill(current);
   rect(x,y,rectsize,rectsize);
  }

}
