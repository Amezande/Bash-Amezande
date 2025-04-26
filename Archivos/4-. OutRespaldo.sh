#!/bin/bash

exito="\e[1;32m"
error="\e[1;31m"

echo -e "${verde} Ingrese el nombre que le quiere dar a su respaldo: "
read a
b=$(find /home -type f | fzf) #Usar file en lugar de dir

main(){
    echo "Extraiga sus archivos."
    tar -xzvf $a.tar.gz $b/*.tar.gz 2>/dev/null && echo -e "${rojo} Archivos extraidos correctamente"
}

main
