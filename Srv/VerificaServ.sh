#!/bin/bash
#verificador Sendmail
if [ $(systemctl status sendmail | grep Active | grep running | awk '{print $3}') = "(running)" ] ;
  then 
    echo "Servicio activo"
else 
    echo "Servicio inactivo: Iniciando"
    sudo systemctl start sendmail
    sudo systemctl enable sendmail
    echo "Servicio activado correctamente"
fi
