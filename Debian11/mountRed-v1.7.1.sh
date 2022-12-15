#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|   *** Se montara la unidadde red en la sig: ***  |"
echo "|         direccion: /home/redMount                |"
echo "+--------------------------------------------------+"
echo " "
    mkdir /home/redMount
    mount -t cifs -o username=xenon,password=14789,noperm //192.168.100.22/data-500gb /home/redMount
echo "Se monto la carpeta de red en /home/redMount dentro de home"
    date
echo " "

#chmod 777 mountRed-v1.7.1.sh
#Ejecutar con ./mountRed-v1.7.1.sh

# mié 30 nov 2022 19:24:33 CST
# mié 07 dic 2022 19:05:42 CST
# mié 14 dic 2022 18:27:59 CST