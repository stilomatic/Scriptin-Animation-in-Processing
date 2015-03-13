class PlayerQue extends Menu{
  
  int counter,counterX,playlistCounter;
  boolean play = false;
  int y;  
  
  AudioPlayer gPlayer;
  
  PlayerQue(int _x,int _y){
    
    y =_y;

    counter = 0;
    counterX = 0;
    playlistCounter = 0;
  }
  
  void addItem(Item it){
  if(counter<listNum){
    Item temp =  new Item(it.ID,(counterX*100),(y*50),it.sizeW,it.sizeH,it.basecolor,it.highlightcolor);
    temp.recorder = it.recorder;
    menu[counter]=temp;

  counter++;
  counterX++;
  }
}
  void display(){
   
    for(int i = 0; i < counter; i++){
       menu[i].display(); 
    }
  }
  void playUpdate(){
    if(play && counter > 0){
    Item temp = (Item)menu[playlistCounter];
    if((gPlayer == null || !gPlayer.isPlaying()) && temp!=null){
      gPlayer = minim.loadFile("myrec"+temp.ID+".wav", 1102);
      gPlayer.addEffect(reffect);
      temp.currentcolor = color(#CCCCCC);
      gPlayer.play();
      
      playlistCounter++;
       if(playlistCounter>=counter){
        playlistCounter = 0;
        for(int i = 0; i < counter; i++){
           menu[i].currentcolor = menu[i].basecolor; 
        }
    } 
      
    }
  }
  
  }
  
  void pressed(){
    
  }
  
  void stop(){
    if(gPlayer!=null)gPlayer.close();
  }
}
