#!/bin/bash

doStuff() {
    echo 'zog'
    echo 'zog'
}

echo -e "Calling doStuff..."

doStuff

zog=$(doStuff)

echo -e "\necho \$zog..."
echo $zog

echo -e "\necho \"\$zog\"..."
echo "$zog"
