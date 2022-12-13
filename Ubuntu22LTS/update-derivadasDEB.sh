#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|   *** SCRIPT ACTUALISADOR DERIVADAS DEBIAN ***   |"
echo "+--------------------------------------------------+"
echo " "
echo "██ Actualisador de paquetes y sistema, se iniciara las actualisaciones."
echo ""
    sudo apt update
echo ""
echo "██ Se Actialisaron los repositorios."
echo "."
    sudo apt upgrade -y
echo ""
echo "██ Se actualisaron los paquetes seleccionados"
echo "."
    sudo apt autoclean
echo ""
echo "██ ::::::::::Tareas terminadas::::::::::"
echo " "
    date
echo " "

#chmod 777 update-derivadasDEB.sh
#Ejecutar con ./update-derivadasDEB.sh

# lun 05 sep 2022 13:34:23 CDT
# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST