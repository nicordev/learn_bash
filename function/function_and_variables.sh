#!/bin/bash

SCRIPT_NAME=$(basename $0)
styleNormal="\e[0m"
styleStrong="\e[1m"
styleSuccess="\e[32m"
styleCaution="\e[33m"
styleFailure="\e[31m"

doStuff() {
    echo -e "${styleStrong}Here we are in the function:${styleNormal} ${FUNCNAME[0]}"
    echo 'zog'
    echo 'zog'
}

echo -e "${styleStrong}We are in the script called ${SCRIPT_NAME}${styleNormal}"

echo -e "${styleStrong}Calling function doStuff...${styleNormal}"

doStuff

zog=$(doStuff)

echo -e "\n${styleStrong}echo \$zog${styleNormal}"
echo $zog

echo -e "\n${styleStrong}echo \"\$zog\"${styleNormal}"
echo "$zog"
