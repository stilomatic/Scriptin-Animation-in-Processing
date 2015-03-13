class Emitter{

  ArrayList particles;
  int c;
  Emitter(){
  
   particles = new ArrayList();
   
  }
  
  void exist(){
    if (random(1) < 0.5 && c < 200) {
      float sz = random(6,30);
      particles.add(new Particle(width/2,20,sz));
      c++;
    }
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = (Particle) particles.get(i);
      p.display();
      if (p.done()) {
        particles.remove(i);
      }
    }
  }
}
