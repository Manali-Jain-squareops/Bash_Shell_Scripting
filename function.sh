#!/bin/bash

function func1() {
echo "hey"
}

func1

function func2() {
((sum = $1 + $2))
echo "$sum"

}

func2 2 3

function func3() {
echo "hello $name"
}

read -p 'name:' name
echo "This is Your $(func3)"
