#!/bin/bash

# Here we print STDIN (Standard Input) of the script
echo "STDIN (Standard Input) of the script:"
echo $(cat -)

# Here we print the parameters of the script
echo "Parameters of the script:"
echo $@