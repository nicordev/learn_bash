#! /bin/bash

function countFiles() {
    ls -1 --file-type | grep --invert-match '/$' | wc -l
}

function countDirectories() {
    ls -1 --file-type | grep '/$' | wc -l
}

function countFilesAndDirectories() {
    ls -1 | wc -l
}


echo $(countFiles) files
echo $(countDirectories) directories
echo $(countFilesAndDirectories) files and directories
