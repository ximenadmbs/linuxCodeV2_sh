#!/bin/bash

echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|        *** INSTALLADOR DE WINE  ***              |"
echo "+--------------------------------------------------+"
echo " "
echo "██ Intalador de Wine (repositorio deb), (Ubuntu 6.0.3~repack-1)"
echo "   Se iniciara la instalacion."
    sudo apt install wine
echo "██ Se instalo la vercion:."
    wine --version
echo " "
echo -e "\e[0;38;5;209m SELECCIONA UNA OPCIÓN:\e[0m"
echo " 1.-Configuracion de Wine"
echo " 2.-Agregar o Desinstalar Programas"
echo " 3.-Salir"
echo ""
    read -p "OPCIÓN: " OPCION
        case $OPCION in
        1)winecfg;; 
        2)wine uninstaller;;
        3) exit;;
        *) echo " OPCIÓN NO VÁLIDA "
exit 1;;
    esac
exit 0

#chmod 777 installWine-Ubuntu.sh
#Ejecutar con ./installWine-Ubuntu.sh

# mié 28 sep 2022 21:06:45 CDT