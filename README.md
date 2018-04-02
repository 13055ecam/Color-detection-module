# Image processing
## Color detection module


The objective of this module is to detect a color combination and send it to the “Minus” robot module whose function is to build a tower made of cubes.

We divided this tutorial into two parts : 
- Flashlight module
- Image treatment module

## Getting started

### Image treatment module
![z](/Pictures/image1.png)

#### Aim 

First and foremost, we must use a camera to take a picture of the color combination. Here, we have chosen a GoPro as a camera because it has an acceptable quality (780 pixel-HD) and it has also a Wi-Fi module for the remote control. 

Once the photo has been taken, the camera automatically switches off after sending the picture to a Raspberry connected with the same Wi-Fi for future image treatment. 

During this treatment, we use the OpenCV free graphics library. 

We have drawn three frames on the picture (one for each cube to detect) to delimit the test portion. 
  
The board analyzes all pixels within each frame: 
1.	It looks whether the color detected is in the range color defined for every color (each color range is defined with one high and one low BGR value)
2.	After that, it returns a value: more the value is great, more the color lies within the range. The program adds up the values and the final value thus obtained determines the color within the range of colors determined initially. 

As a matter of conclusion, we have implemented in our program the different possible combinations to save time. Indeed, we only required two colors to deduce the final combination. 

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
- Active WiFi and connect the GoPro on the Raspberry (if you use a USB Camera, don't forget to install the drive) 
- Open terminal (alt+ctrl+t) 
1) Import this repos from github (git clone "url of this repo")
2) Go to "ImageProcessing" Folder (cd /home/pi/..../ImageProcessing)
3) For testing the GoPro: python3 go_pro_test.py (You'll see normally a picture in the current folder)
4) For testing the webcam: python3 webcam_test.py (You'll see normally a picture in the current folder)

**color_detection.py**

- *GoPro* : launch the color detection module on the terminal : python3 GP_color_detection.py 
- *webcam* : launch the color detection module on the terminal : python3 WB_color_detection.py 

You'll see 3 colors frames on the picture and the final combination color on the terminal)

##### Adjust position of a frame
- Put your cursor and maintain it at a place of this image take of note the position. See the following example : 
![z](/Pictures/image3.png)

- To change the position in the code (GP_color_detection.py or WB_color_detection.py) . See the following example : 
![z](/Pictures/image4.png)

##### Adjust range color 
- To change the color range in the code (GP_color_detection.py or WB_color_detection.py)  See the following example : 
![z](/Pictures/image5.png)

### Flashlight module

#### Aim

We added a LED flashlight above the camera because light is an important factor and can bias our previous calculations. Therefore, the constant level of light thus created enables us to maintain our settings. This flashlight is turned off immediately after the camera has taken the photo, so as not to disrupt other teams or distract the audience. 

#### Bill of materials: 

- One Raspberry Pi zero W
- One LED flashlight 
- One 5V battery

#### Connections

We use pin 4 of the raspberry Pi zero to power the gate pin of IRF520 mosfet in order to control the light. The board is powered with a 5V power supply from the battery (pin 2 = 5V and pin 6= GND).

#### Setup 
- Launch flashlight.py (You can edit switch delay) 


