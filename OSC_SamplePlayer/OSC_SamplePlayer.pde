import processing.sound.*;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
SoundFile alarm;

void setup() {
  size(640, 360);
  background(255);


  oscP5 = new OscP5(this, 12000);


  // Load a soundfile from the /data folder of the sketch and play it back
  alarm = new SoundFile(this, "alarm.wav");
  alarm.play();
}      

void draw() {
}
 
void oscEvent(OscMessage msg) {
  String address = msg.addrPattern();

  if (address.equals("/kick")) {
    println("trigger kick");
    alarm.play();
  }

  if (msg.checkAddrPattern("/wek/outputs")) {
    //println("got message "+msg.addrPattern());
    if (msg.checkTypetag("f")) {
      float detectedClass = msg.get(0).floatValue();
      //TODO: only trigger on change
      if (detectedClass == 2) {
        alarm.play();
      }
      if (detectedClass == 1) {
        //snare.play();
      }

      println("detected class: "+detectedClass);
      return;
    }
  }
}
