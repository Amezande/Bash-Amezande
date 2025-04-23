#!/bin/bash

exito="\e[1;32m"
error="\e[1;31m"
#Nombre que le quiere dar al respaldo
echo -e "Ingrese el nombre que le quiere dar a su respaldo: "
read a
d=$(pwd)
b=$(find . -type d | fzf)

trap ctrl_c INT

ctrl_c () {
    echo -e "\nSaliendo"
    exit 0
}

main(){
    echo "Respalde sus archivos."
    tar -cvf $a.tar $b/*.*

    if [ $? -eq 0 ]
    then 
        echo "Archivos respaldados correctamente"
    else
        echo "Hubo un error en su respaldo"
    fi
}

main
