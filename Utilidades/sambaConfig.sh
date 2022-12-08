#!/bin/bash
echo " "
echo " 1.-Estatus Samba"
echo " 2.-Editar smb.conf en nano"
echo " 3.-Reiniciar Samba"
#echo " 4.-Encender Servicio"
echo " 5.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1)sudo systemctl status nmbd;; 
2)sudo nano /etc/samba/smb.conf;;
3)sudo service smbd restart;;
#4);;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0