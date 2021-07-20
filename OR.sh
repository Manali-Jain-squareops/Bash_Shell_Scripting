#!/bin/bash
read -p 'username:' name
read -p 'pwd:' pwd

if [[ ($name == "manali" || $pwd == "manali") ]]
then
echo "done"
else
echo "wrong data"
fi

