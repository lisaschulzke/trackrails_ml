# object detection on railways
<br />
<h3>relevance</h3>

On average, every train driver hits at least three people during his or her career. While the victim is hurt in a more physical way, the train driver itself is emotionally hurt, too.

<br />
<h3>scenario</h3>

Tim is a train driver and really likes his job. However, he is always afraid of unintentionally catching people on the railways.  He wishes there was a system that would warn him as soon as possible when a person, animal or other object is on the tracks.

As he is about to enter a station one afternoon, the warning system strikes an alarm and notifies him on a person in the track who is rushing across the tracks to another train due to time saving. Since Tim has a very high speed and a long braking distance. Due to the length of the train, it is of great importance for him to be notified in time.

<br />
<h3>user research</h3>

After talking to the customer support service at Deutsche Bahn, we came to the conclusion that there are already cameras on trains which do not need object detection because a real human being is sitting in the train. However, on the stations they have cameras to track the whole situation. Indeed, the object detection is done by another employer of the company. In conclusion, there is a high potential of involving machine learning in their processes and surveillances. The woman at the customer support told us her pains which she has been watching for year. In case of a storm, trees often fall on the tracks which leads to accidents. Therefore it would be helpful to have drones scanning the railways before the first train runs. This way, accidents can be prohibitted at an early stage.

<br />
<h3>technical realization</h3>

Our plan is to use a smartphone camera (that is synced with the laptop) to film a picture of the railways (2D) and thus creating a stop motion film with different objects like people, animals as well as other objects. Therefore, we change positions and constellations of the different objects to train the machine learing algorithm. 
We will have two different classes:
1. empty tracks (no objects that can be detected)
2. people, animals and objects on the tracks

So, whenever something is detected on the railways, there will be a warning signal to notify the train driver. For the first case, however, there will be no signal.

<br />
<h3>why have we decided on machine learning?</h3>

On train stations as well as on the whole railways, there could be cameras that serve input for the machine learning algorithm. As soon as something critical is detected, a sound will notify the involved people to be able to react quickly.
The machine learning algorithm has the benefit of detecting objects that have different size, colors, shapes and movement speed. Objects also have different criticalities, e.g. a can has a different impact than a human being or animals as well as a big object that could harm the train and its passengers.

<br />
<h3>here's what you need</h3>
1. smartphone camera that is synced with your laptop and wifi connection
<br />
2. Wekinator + trackrails.wekproj (if you don't have the wekinator software yet, <a href="http://www.wekinator.org/downloads/" target="_top">download it here</a>
<br />
3. Processing + alarm.pde + camera.pde (if you don't have the processing software yet, [download it here](https://processing.org/download).)

<br />
<br />
<h3>step by step instruction</h3>
1. download the software if you do not have it on your computer yet.
<br />
2. open the two code files with the software (1 wekinator projekt and 2 processing sketches)
<br />
3. open the html browser animation (the graphic input) and film it with the connected smartphone camera to train the algorithm
<br />
4. run the two sketches as well as the wekinator project. 
for the wekinator project it is important to set following settings:
<br />
&nbsp;&nbsp; - inputs: 100 (on a resolution of 10 x 10px)
<br />
&nbsp;&nbsp; - outputs: 1
<br />
&nbsp;&nbsp; - type: all classifiers (default settings)
<br />
&nbsp;&nbsp; - classes: 2 classes
<br />
