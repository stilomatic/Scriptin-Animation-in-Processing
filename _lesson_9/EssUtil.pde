class EssUtil{
  
  AudioInput myInput;
  FFT myFFT;

  EssUtil(){
     myInput = new AudioInput(); 
     myFFT = new FFT(HOW_MANY*2);
     myInput.start();
  }

  FFT exist(){
    myFFT.getSpectrum(myInput);
    return myFFT;
  }
}
