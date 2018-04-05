#!/usr/bin/expect

nmcli c up "armen"
sleep 10
python3 takePhoto.py
nmcli c up "Airport Express Lenaerts"

python2 color_detection.py
