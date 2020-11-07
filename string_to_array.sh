#!/bin/bash

echo "Which fruits do you like?"
read -a fruits

echo "Now read the array:"

for i in "${fruits[@]}"
do
    echo $i
done