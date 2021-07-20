#!/bin/bash
Recipent="manalij62@gmail.com"
Subject="Happy"
Message="Good Evening"

sudo mail -s $Subject $Recipent <<< $Message
