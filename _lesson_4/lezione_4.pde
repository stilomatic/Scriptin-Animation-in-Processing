/*
Dichiaro due variabili quadrato; queste due variabili saranno due istanze della classe Quadrato
*/
Quadrato quadrato;
Quadrato quadrato1;

Sfondo fondo;

/*
Setup è un metodo che viene invocato una sola volta all'iniziazione del programma
*/
void setup(){
  
  // invocando il metodo size; processing creerà una finestra delle dimensioni specificate negli argomenti del metodo.
  // size(width,height);
  size(600,500);
  
  fondo = new Sfondo();
  
  // istanzio le variabili quadrato e quadrato1 invocando un nuovo costruttore della classe Quadrato
  quadrato = new Quadrato();
  quadrato1 = new Quadrato();
  


}
/*
Setup è un metodo che viene invocato ad ogni frame durante l'esecuzione del programma
*/
void draw(){
  
  // invoco il metodo background per ripulire i pixels dalla grafica del frame precedente.
  // al metodo background possiamo passare diversi argomenti; 
  // un intero, per avere un background colorato in una scala di grigi, 
  // tre interi pari ad i valori rgb per avere un colore di sfondo, 
  // una variabile di tipo color
  background(0);
  
  fondo.exist();
  // invoco il metodo exist per l'istanza di quadrato e quadrato1
  quadrato.exist();
  quadrato1.exist();

}

