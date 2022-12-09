#!/bin/bash
echo " "
echo " 1.-Estatus ufw"
echo " 2.-Deshabilitar ufw"
echo " 3.-Habilitar ufw"
#echo " 4.-Encender Servicio"
echo " 5.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1)sudo ufw status;; 
2)sudo ufw disable;;
3)sudo ufw enable;;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
echo "Para Activar puerto use: sudo ufw allow ,"
echo "Para Desactivar puerto use: sudo ufw deny ,"
exit 1;;
esac
exit 0