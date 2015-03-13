// una lista di numeri interi
int [] numeriUno = {1,2,3,4,5};
// una lista di numeri interi che contiene 5 elementi
int [] numeriDue = new int[6];
// una lista di colori con 149 elementi
color [] colori = new color[150];
// una classe
Dati iMieiDati;

void setup(){
  
  println(numeriUno.length);
  println(numeriUno[0]);
  println(numeriDue.length);
  println(numeriDue[0]);
  println(colori.length);
  
  for( int i=0;i<numeriUno.length; i = i+1){
      println(numeriUno[i]);
  }


  println(iMieiDati);
  iMieiDati = new Dati();
  println(iMieiDati);
 // println(a);
 iMieiDati.a = 1000;
  println(iMieiDati.a);

}
