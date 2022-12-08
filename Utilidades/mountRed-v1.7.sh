#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|   *** Se montara la unidadde red en la sig: ***  |"
echo "|           direccion: ~/redMount                  |"
echo "+--------------------------------------------------+"
echo " "
    sudo mkdir ~/redMount
    sudo mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb ~/redMount
echo "Se monto la carpeta de red en ~/redMount de este usuario"
    date
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# mié 30 nov 2022 19:24:33 CST
# mié 07 dic 2022 19:05:42 CST