# Image processing
## Color detection module
![z](/Pictures/image1.png)

The objective of this module is to detect a color combination and send it to the “Minus” robot module whose function is to build a tower made of cubes.

## Getting started

### Bill of materials: 

- Two Raspberry Pi: a “Pi 3” and a “Pi zero W”
- A Wi-Fi GoPro (Hero+)
- A Sencys LED flashlight (of a 4.4cm diameter, 280 lumens, 1.5V and a zoom function for a wide or targeted beam
- A 5V battery 


### Connections

- **Flashlight module**: We use pin 4 of the raspberry Pi zero to power the gate pin of IRF520 mosfet in order to control the light. The board is powered with a 5V power supply from the battery (pin 2 = 5V and pin 6= GND)
- **Image treatment module**: No pins required  

### Setup 

First and foremost, we must use a camera to take a picture of the color combination. Here, we have chosen a GoPro as a camera because it has an acceptable quality (780 pixel-HD) and it has also a Wi-Fi module for the remote control. 

Once the photo has been taken, the camera automatically switches off after sending the picture to a Raspberry connected with the same Wi-Fi for future image treatment. 

During this treatment, we use the OpenCV free graphics library. 

We have drawn three frames on the picture (one for each cube to detect) to delimit the test portion. 
  
The board analyzes all pixels within each frame: 
1.	It looks whether the color detected is in the range color defined for every color (each color range is defined with one high and one low BGR value)
2.	After that, it returns a value: more the value is great, more the color lies within the range. The program adds up the values and the final value thus obtained determines the color within the range of colors determined initially. 

We added a LED flashlight above the camera because light is an important factor and can bias our previous calculations. Therefore, the constant level of light thus created enables us to maintain our settings. This flashlight is turned off immediately after the camera has taken the photo, so as not to disrupt other teams or distract the audience. 

As a matter of conclusion, we have implemented in our program the different possible combinations to save time. Indeed, we only required two colors to deduce the final combination. 

### Codes
- Flashlight module.py
- Image treatment module.py 
