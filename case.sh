#!/bin/bash
read -p 'enter a number:' n
case $n in
1)
echo "one";;
2)
echo "two" ;;
*)
echo "wrong" ;;
esac
