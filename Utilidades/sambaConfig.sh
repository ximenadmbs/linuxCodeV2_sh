#!/bin/bash
echo " "
echo "+--------------------------------------------------+"
echo "|      Ximena bash scrip [Versión 1.2]             |"
echo "|  (c) Corporation. Todos los derechos reservados. |"
echo "|                                                  |"
echo "|*** SAMBA STATUS: SELECCIONA UNA OPCIÓN v.3.1 *** |"
echo "+--------------------------------------------------+"
echo " "
echo " 1.-Estatus Samba"
echo " 2.-Editar smb.conf en nano"
echo " 3.-Reiniciar Samba"
echo " 4.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
    case $OPCION in
        1)sudo systemctl status nmbd;; 
        2)sudo nano /etc/samba/smb.conf;;
        3)sudo service smbd restart;;
        4) exit;;
        *) echo " OPCIÓN NO VÁLIDA "
exit 1;;
    esac
exit 0

# mie 09 nov 2022 14:45:34
# jue 08 dic 2022 13:32:20 CST