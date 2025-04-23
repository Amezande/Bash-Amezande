#!/bin/bash

exito="\e[1;32m"
error="\e[1;31m"
#Nombre que le quiere dar al respaldo
echo -e "Ingrese el nombre que le quiere dar a su respaldo: "
read a
b="/ruta/a/su/carpeta/o/archivo"

trap ctrl_c INT

ctrl_c () {
    echo -e "\nSaliendo"
    exit 0
}

main(){
    echo "Respalde sus archivos."
    tar -cvf $a $b/*.*

    if[$? = 0]
}

main
