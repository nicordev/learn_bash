#!/bin/bash

# Strings

if [ $1 = "Roxane" ]
then
    echo "Salut Roxane !"
elif [ $1 != "zog" ]
then
    echo "Not zog?"
fi

# Numbers

if [ $1 -eq 20 ]
then
    echo "Vous avez entré $1.";
fi

if [ $1 -ne 20 ]
then
    echo "$1 est différent de 20.";
fi

if [ $1 -lt 20 ]
then
    echo "$1 est inférieur à 20.";
fi

if [ $1 -le 20 ]
then
    echo "$1 est inférieur ou égal à 20.";
fi

if [ $1 -gt 20 ]
then
    echo "$1 est supérieur à 20.";
fi

if [ $1 -ge 20 ]
then
    echo "$1 est supérieur ou égal à 20.";
fi

# Files

if [ -e $1 ]; then
    echo "$1 existe."
fi

if [ -d $1 ]; then
    echo "$1 est un répertoire."
fi

if [ -f $1 ]; then
    echo "$1 est un fichier."
fi

if [ -L $1 ]; then
    echo "$1 est un lien symbolique."
fi

if [ -r $1 ]; then
    echo "$1 est accessible en lecture."
fi

if [ -w $1 ]; then
    echo "$1 est accessible en écriture."
fi

if [ -x $1 ]; then
    echo "$1 est exécutable."
fi

if [ $1 -nt $2 ]
then
    echo "$1 est plus récent que $2."
fi

if [ $1 -ot $2 ]
then
    echo "$1 est plus ancien que $2."
fi

# AND OR

if [ $# -ge 1 ] && [ $1 = 'koala' ]; then
    echo 'Quel bel animal !'
fi

if [ $1 = 'fraise' ] || [ $1 = 'framboise' ]; then
    echo 'Vive les fruits rouges !'
fi

# NOT

if [ ! -e $1 ]; then
    echo "$1 n'existe pas."
fi

# Switch

case $1 in
    "Bruno" | "Paul" | "Bob")
        echo "Salut Bob ou Paul ou Bruno !"
        ;;
    "Michel")
        echo "Bien le bonjour Michel"
        ;;
    "Jean")
        echo "Hé Jean, ça va ?"
        ;;
    *)
        echo "J'te connais pas, ouste !"
        ;;
esac