#!/bin/bash

echo " "
echo "Ximena bash scrip [Versión 0.10]"
echo "(c) Corporation. Todos los derechos reservados, "
echo "██ Actualisador de paquetes y sistema, se iniciara las actualisaciones."
echo ""
sudo apt update
echo ""
echo "██ Se Actialisaron los repositorios."
echo "."
sudo apt upgrade
echo ""
echo "██ Se actualisaron los paquetes seleccionados"
echo "."
sudo apt autoclean
echo ""
echo "██ ::::::::::Tareas terminadas::::::::::"
echo " "
date
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.22LTS.sh

# lun 05 sep 2022 13:34:23 CDT