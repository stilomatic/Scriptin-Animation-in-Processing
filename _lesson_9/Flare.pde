class Flare{
   
  int wSize = 65;
  int hSize = 65;
  
  Flare(){

  }
  
  void render (PVector p,Texture t){
   
      float halfwSize = wSize * 0.5;
      float halfhSize = hSize * 0.5;
      
      t.bind();  
      t.enable();  
      gl.glBegin(GL.GL_QUADS); 
        gl.glTexCoord2f(0, 0);
        gl.glVertex2d(p.x-halfwSize, p.y-halfhSize);
        gl.glTexCoord2f(1, 0);
        gl.glVertex2d(p.x+halfwSize, p.y-halfhSize);
        gl.glTexCoord2f(1, 1);
        gl.glVertex2d(p.x+halfwSize, p.y+halfhSize);
        gl.glTexCoord2f(0, 1);
        gl.glVertex2d(p.x-halfwSize, p.y+halfhSize);
      gl.glEnd();   
      t.disable();
      
  }
}
