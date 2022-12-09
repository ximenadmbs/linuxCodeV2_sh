#!/bin/bash

echo " "
echo "Ximena bash scrip [Versión 1.0.27.10]"
echo "(c) Corporation. Todos los derechos reservados, "
echo " *** SCRIPT PARA OPCIONES DE WINE *** "
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Configuracion de Wine"
echo " 2.-Agregar .EXE / Quitar Desinstalar Programas .EXE"
echo " 3.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1)winecfg;; 
2)wine uninstaller;;
3) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0