#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|         *** SCRIPT ACTUALIZADOR ***              |"
echo "|        Edicion Manjaro linux, Archlinux.         |"
echo "+--------------------------------------------------+"
echo " "
echo "(c) Corporation. Todos los derechos reservados,"
echo -e "\e[0;38;5;38m[ Actualisador de paquetes y sistema, se iniciara las actualisaciones. ]\e[0m"
echo " "
    sudo pacman -Syyu
    sudo pacman -Scc
echo " "
echo -e "\e[0;38;5;200m██ Tareas terminadas \e[0m"
    date
echo " "


#chmod 777 update-Manjaro.sh
#Ejecutar con ./update-Manjaro.sh

# mar 01 nov 2022 13:01:05 CST
# mar 13 dic 2022 13:15:30 CST