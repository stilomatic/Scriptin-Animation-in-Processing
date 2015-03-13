class Sfondo{
  
  color colorA,colorB;
  
  Sfondo(){
    colorA = color(100);
    colorB = color(100);
  }
  
  void exist(){
    
    if(quadrato.x > 0 && quadrato.x < width/2){
        colorA = colorA + color(20,0,quadrato.x);
    }
    if(quadrato1.x > width/2 && quadrato1.x < width){
        colorB = colorB + color(quadrato1.x,20,0);
    }
  
    
    fill(colorA);
    rect(0,0,width/2,height);
    fill(colorB);
    rect(width/2,0,width/2,height);
  }


}
