# object detection on railways
<br />
<h3>relevance</h3>

On average, every train driver hits at least three people during his or her career. While the victim is hurt in a more physical way, the train driver itself is emotionally hurt, too.

<br />
<h3>scenario</h3>

Tim is a train driver and really likes his job. However, he is always afraid of unintentionally catching people on the railways.  He wishes there was a system that would warn him as soon as possible when a person, animal or other object is on the tracks.

As he is about to enter a station one afternoon, the warning system strikes an alarm and notifies him on a person in the track who is rushing across the tracks to another train due to time saving. Since Tim has a very high speed and a long braking distance. Due to the length of the train, it is of great importance for him to be notified in time.

<br />
<h3>technical realization</h3>

Our plan is to use a smartphone camera (that is synced with the laptop) to film a picture of the railways (2D) and thus creating a stop motion film with different objects like people, animals as well as other objects. Therefore, we change positions and constellations of the different objects to train the machine learing algorithm. 
We will have two different classes:
1. empty tracks (no objects that can be detected)
2. people, animals and objects on the tracks

So, whenever something is detected on the railways, there will be a warning signal to notify the train driver. For the first case, however, there will be no signal.

<br />
<h3>here's what you need</h3>
1. smartphone camera that is synced with your laptop and wifi connection
2. Wekinator + trackrails.wekproj (if you don't have the wekinator software yet,  [download it here](http://www.wekinator.org/downloads/).)
3. Processing + alarm.pde + camera.pde (if you don't have the processing software yet, [download it here](https://processing.org/download).)

<br />
<h3>step by step instruction</h3>
1. download the software if you do not have it on your computer yet.
2. open the two code files with the software (1 wekinator projekt and 2 processing sketches)
3. open the html browser animation (the graphic input) and film it with the connected smartphone camera to train the algorithm
4. run the two sketches as well as the wekinator project. 
for the wekinator project it is important to set following settings:
<br />
&nbsp; - inputs: 100 (on a resolution of 10 x 10px)
<br />
&nbsp; - outputs: 1
<br />
&nbsp; - type: all classifiers (default settings)
<br />
&nbsp; - classes: 2 classes
<br />
