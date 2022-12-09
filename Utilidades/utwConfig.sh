#!/bin/bash
echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "| ***UFW firewall: SELECCIONA UNA OPCIÓN v.3.1 *** |"
echo "+--------------------------------------------------+"
echo " "
echo " 1.-Estatus ufw"
echo " 2.-Deshabilitar ufw"
echo " 3.-Habilitar ufw"
echo " 4.-Salir"
echo " "
echo "  Para Activar puerto use: sudo ufw allow ,"
echo "  Para Desactivar puerto use: sudo ufw deny ,"
echo ""
read -p "OPCIÓN: " OPCION
    case $OPCION in
        1)sudo ufw status;; 
        2)sudo ufw disable;;
        3)sudo ufw enable;;
        4) exit;;
        *) echo " OPCIÓN NO VÁLIDA "
exit 1;;
    esac
exit 0

# mie 09 nov 2022 14:45:34
# jue 08 dic 2022 13:32:20 CST