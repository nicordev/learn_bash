#! /bin/bash

## To create a file:
##    touch fileNameHere
doesFileExist() {
    [ -f "$1" ]
}

## To create a symbolic link:
##    ln --symbolic fileNameHere linkNameHere
##    ln -s fileNameHere linkNameHere
doesSymbolicLinkExist() {
    [ -L "$1" ]
}

if doesFileExist $1
then
    echo 'File exists!' $1
else
    echo 'Unknown file.' $1
fi

if doesSymbolicLinkExist $1
then
    echo 'Symbolic link exists!' $1
else
    echo 'Unknown symbolic link.' $1
fi

