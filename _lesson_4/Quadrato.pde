// definisco la classe Quadrato
class Quadrato{
  
  // definisco due variabili per tenere i valori delle cordinate del quadrato
  float x,y;
  // definisco due varibili per tenere i valori della velocità di animazione del quadrato
  float speedx = random(6);
  float speedy = random(6);
  // definisco e assegno ad una variabile il valore delle dimensioni del quadrato
  int rectsize = 80;

  // dichiaro il costruttore della classe Quadrato
  Quadrato(){
    // inizializzo i valori della posizione al centro dello schermo
    x = width*0.5;
    y = height*0.5; 
  }
  
  // dichiaro il metodo exist
  void exist(){
    // ad ogni frame sommo la velocità alla posizione
     x = x+speedx;
     y = y+speedy;
  
  // ad ogni frame controllo se il quadrato sbatte sui brodi sinistro o destro della mia finestra
  if(x<0 || x>width-rectsize){
    // se il quadrato tocca il bordo sinistro o destro inverto il segno della velocità che sommo alle coordinate x
    speedx = speedx*-1;
  }
  
  // ad ogni frame controllo se il quadrato sbatte sui superiore o inferiore della mia finestra
  if(y<0 || y>height-rectsize){
    // se il quadrato tocca il bordo sinistro o destro inverto il segno della velocità che sommo alle coordinate y
    speedy = speedy*-1;
  }
 
  fill(255);
  // invoco il metodo rect, che disegna il quadrato a schermo
  rect(x,y,rectsize,rectsize);
  
  }

}
