# Color detection

The objective of this module is to detect a color combination and send it to the “Minus” robot module whose function is to build a tower made of cubes.

## Getting started

### Image treatment module


#### Aim 

First and foremost, we must connect to GoPro wifi to take a picture of the color combination. Here, we have chosen a GoPro as a camera because it has an acceptable quality (780 pixel-HD) and it has also a Wi-Fi module for the remote control.

Once the photo has been taken, the camera automatically switches off and we connect to the robot by wifi (a Raspberry connected with the same Wi-Fi for future image treatment).

During this treatment, we use the OpenCV free graphics library (***minimum version 3.3.1 or newer***)

We have drawn three frames on the picture (one for each cube to detect) to delimit the test portion. 
  
The board analyzes all pixels within each frame: 
1.	It looks whether the color detected is in the range color defined for every color (each color range is defined with one high and one low BGR value)
2.	After that, it returns a value: more the value is great, more the color lies within the range. The program adds up the values and the final value thus obtained determines the color within the range of colors determined initially. 

However, we have implemented in our program the different possible combinations to save time. Indeed, we only required two colors to deduce the final combination.

As a matter of conclusion, we send combination to the robot by ROS. 

![z](/Pictures/image1.png)
#### Bill of materials: 

- One Raspberry Pi zero W
- One Wi-Fi GoPro (Hero+) 
- One 5V battery
- Etcher (https://etcher.io/) to install an OS on the Raspberry

#### Connections

- No pins required  

#### Setup 
- Download Ubuntu mate or an another distribution on the raspberry which is compatible with ROS 
(https://www.raspberrypi.org/downloads/)
- To install the distribution : 
	1) Open Etcher
	2) Select your image previously
	3) Connect a drive (Fat 32) and flash your SD Card 
- Active WiFi and connect the GoPro to the Raspberry (if you use a USB Camera, don't forget to install the drive) 
- Open terminal (***alt+ctrl+t***):
	1) Install OpenCV by following this tutorial : https://milq.github.io/install-opencv-ubuntu-debian/
	2) Import the repos from github : ***git clone "url of this repo"***
    	3) Go to "ImageProcessing" Folder: ***cd /home/pi/..../ImageProcessing***
    	4) For testing the GoPro: ***python3 /test/go_pro_test.py*** (You will see normally a picture in the current folder)
    	5) For testing the webcam: ***python3 /test/webcam_test.py*** (You will see normally a picture in the current folder)
	
**color_detection.py**
- *GoPro* : launch the color detection module on the terminal : ***python3 GP_color_detection.py*** 
- *Webcam* : launch the color detection module on the terminal : ***python3 WB_color_detection.py*** 

You'll see 3 colors frames on the picture and the final combination color on the terminal)

##### Adjust position of a frame
- Put your cursor and maintain it at a place of this image take of note the position. See the following example : 
	![z](/Pictures/image3.png)

- To change the position in the code (GP_color_detection.py or WB_color_detection.py) . See the following example : 
![z](/Pictures/image4.png)

##### Adjust range color 
- To change the color range in the code (GP_color_detection.py or WB_color_detection.py)  See the following example : 
![z](/Pictures/image5.png)

##### ROS

You can use ***ROS*** to send the color combination to another robot module

- Install ROS (see "ROS tutorial")
- .....
- .... 
- .... 
- Open terminal and run the code : ***python3 GP_color_detection.py*** or ***python3 WB_color_detection.py***
### Bonus : flashlight module

#### Aim

We added a LED flashlight above the camera because light is an important factor and can bias our previous calculations. Therefore, the constant level of light thus created enables us to maintain our settings. This flashlight is turned off immediately after the camera has taken the photo, so as not to disrupt other teams or distract the audience. 

#### Bill of materials: 

- One Raspberry Pi zero W
- One LED flashlight 
- One 5V battery

#### Connections

We use pin 4 of the raspberry Pi zero to power the gate pin of IRF520 mosfet in order to control the light. The board is powered with a 5V power supply from the battery (pin 2 = 5V and pin 6= GND).
![z](/Pictures/image6.png)

#### Setup 
- Run the code on the terminal: ***python flashlight.py*** 

