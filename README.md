# Image processing
## Color detection module
![z](/images/logo.png)
![Alt](url)

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

### Privacy

- No data is sent to any server – everything you type stays inside your browser
- The editor automatically saves what you write locally for future use.  
  If using a public computer, either empty the left panel before leaving the editor or use your browser's privacy mode
