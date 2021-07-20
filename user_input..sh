#!/bin/bash

#Enter in New Line
echo "hey! Enter Your Name :"
read name
echo "Hello $name, Welcome !"

#Enter in Same  Line
echo -n "hey! Enter Your Name :"
read name
echo "Hello $name, Welcome !"

#show useful information with input
read -p 'username:' name
read -sp 'password:' pwd
echo -e "\n$name pasword is $pwd" 

#take multipe inputs
read a b c
echo "All Users are $a, $b and $c"

#set time for user input
read -t 6 -p 'name:' name
echo "Your name is $name"
