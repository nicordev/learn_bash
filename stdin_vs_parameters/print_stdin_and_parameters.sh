#!/bin/bash

echo -/dev/stdin

# Here we print STDIN (Standard Input) of the script
echo $(cat -)

# Here we print the parameters of the script
echo $@