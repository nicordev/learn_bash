#!/usr/bin/env bash

myFile='/zog/zig/zag/hello.world'

echo ${myFile##*/}

extractFileName() {
    echo ${@##*/}
}

extractFileName "$myFile"