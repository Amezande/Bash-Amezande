#!/bin/bash

verde="\e[1;32m"
rojo="\e[1;31m"

echo -e "${verde} Ingrese el nombre que le quiere dar a su respaldo: "
read a
b=$(find /home -type d | fzf)

main(){
    echo "Respalde sus archivos."
    tar -czvf $a.tar.gz $b/*.* 2>/dev/null && echo -e "${rojo} Archivos respaldados correctamente"
}

main
