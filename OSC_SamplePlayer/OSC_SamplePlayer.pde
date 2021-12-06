import processing.sound.*;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
SoundFile alarm;
//f you want to play multiple sounds, make sure they are listed here

void setup() {
  size(640, 360);
  background(255);

//make sure to choose the same port on wekinator 
  oscP5 = new OscP5(this, 12000);


  // Load a soundfile from the /data folder, choose a short repeatable file, a large one will not work here
  alarm = new SoundFile(this, "alarm.wav");
  
  //integrate the sound files here as well, remember to also call the function that an actual sound is played
  alarm.play();
}      

void draw() {
}

//message is being sent over OSC
void oscEvent(OscMessage msg) {
  String address = msg.addrPattern();

  if (address.equals("/alarm")) {
    //check the terminal to see the actual state
    println("trigger alarm");
    alarm.play();
  }


//listening to wekinator outputs
  if (msg.checkAddrPattern("/wek/outputs")) {
    if (msg.checkTypetag("f")) {
      float detectedClass = msg.get(0).floatValue();
      //differentiation between the two classes and their according sound
      if (detectedClass == 2) {
        alarm.play();
      }
      if (detectedClass == 1) {
        //here you could place another sound that is triggered when tracks are empty
      }
      // you could also add up multiple classes with different sounds here, but do not forget to integrate them at the top of the file
      
      // check the terminal to see which class has been detected
      println("detected class: "+detectedClass);
      return;
    }
  }
}
