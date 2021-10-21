#! /bin/bash

echo "Hello${IFS}World!"

someFruits="apple,orange,banana"

# Remember the initial IFS
initialIfs=$IFS

# Set the IFS to the character we need to use to split
IFS=','

for fruit in $someFruits
do
    echo $fruit
done

# use an array
fruitsBasket=( $someFruits )

for fruit in ${fruitsBasket[@]}
do
    echo $fruit
done

# Set the IFS as it was initially
IFS=$initialIfs

for fruit in $someFruits
do
    echo $fruit
done

myString="hello:world"
firstWord=${myString%:*}
lastWord=${myString##*:}

echo $firstWord $lastWord

# be careful if the string does not have the separator: lastWord == firstWord
myString="hello"
firstWord=${myString%:*}
lastWord=${myString##*:}

echo $firstWord $lastWord