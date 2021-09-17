#! /bin/bash

# Declare a variable
fruit='apple'

# Declare a variable, Force its type to integer
declare -i fruitCount=3

# Declare a variable, Force its type to lower string
declare -l name="WORLD"
echo $name

# Declare a variable, Force its type to upper string
declare -u name="WORLD"
echo $name

# Declare an indexed array
users=(sarah bob jim jean noemie "jean sébastien")
declare -a fruits=(apple peach pear orange banana)

fruits[1987]='raspberry'

echo ${fruits[1987]}

for user in "${users[@]}"; do # mandatory "" for jean sébastien
    echo "${user}"
done

for fruit in "${fruits[@]}"; do
    echo "${fruit}"
done

# Multidimensional indexed array
declare -a data=(users data)

for datum in "${data[@]}"; do
    for fruit in "${fruits[@]}"; do
        echo "${fruit}"
    done

    for user in "${users[@]}"; do # mandatory "" for jean sébastien
        echo "${user}"
    done
done

# Declare an associative array
declare -A pointA
pointA[x]=10
pointA[y]=14

declare -A pointB=([x]=79 [y]=12)

echo "${pointA[x]} ${pointA[y]}"
echo "${pointB[x]} ${pointB[y]}"