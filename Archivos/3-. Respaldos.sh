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
    exit 1
}

function h {
    echo "Help: Use el programa para hacer un respaldo de las carpetas que desee, decida donde guardan y más con eestos parámetros"
}

#Si no se puede realizar el respaldo
#Si no hay archivos dentro de esa carpeta para respaldar

main(){
    echo "Respalde sus archivos."
    tar -czvf $a.tar.gz $b/*.* 2>/dev/null
    #CZVF hace tar.gz verbose
    #Mandando los errores al dev/null

    if [ $? -eq 0 ]
    then 
        echo "Archivos respaldados correctamente"
    else

        echo "Hubo un error en su respaldo"
    fi
}

main
