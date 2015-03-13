class Menu{
  
  int listNum = 8;
  int itemWidth = 100; 
  int itemHeight = 50;
  color basicColor = color(#003366);
  
  Item [] menu = new Item[listNum];
   Menu(){}
  Menu(int _x, int _y){
    
    for(int i = 0; i < listNum; i++){
       menu[i] = new Item(i, _x+(i*itemWidth),_y,itemWidth,itemHeight,basicColor,color(125));
    }
  }
   void update(){
    for(int i = 0; i < listNum; i++){
       menu[i].update(); 
    }
   }
  
  void display(){
   
    for(int i = 0; i < listNum; i++){
       menu[i].display(); 
    }
  }
  void pressed(){
    for(int i = 0; i < listNum; i++){
    if(menu[i].over() && !menu[i].locked){ 
        menu[i].record();
        menu[i].locked = true; 
      
    } else if(menu[i].over() && menu[i].locked){
          if(menu[i].player == null){
            menu[i].stopRecord();
            menu[i].play();
            menu[i].basecolor = color(int(random(255)),int(random(255)),int(random(255)));
          }else{
              menu[i].play();
              addItem(menu[i]);
         }
          menu[i].locked = false;
        }
    }
  }
}
