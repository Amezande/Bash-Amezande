#!/bin/bash
i=$(ip a | grep 'inet' | awk '$(print $2)' | tail -n1)
disp=$(ip a | grep 'mtu' | awk '$(print $2)' | tail -n1 | tr -d ":")
stat=$(nmcli device status | grep ethernet | grep conectado | awk '{print $3}')

if [ $stat == "conectado" ];
  then 
  echo "Servicio activo"
  else
  echo "Servicio inactivo"
  echo "¿Quiere activarlo? S/N"
  read a
    if [ $a == S ];
      then
      echo "Lo activa"
      else
      echo "No lo activa"
    fi
fi
