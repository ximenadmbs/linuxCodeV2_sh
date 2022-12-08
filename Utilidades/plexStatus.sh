#!/bin/bash
clear
echo " "
echo " ██ PLEX STATUS: SELECCIONA UNA OPCIÓN v.1.0.1██"
echo " 1.-Estatus Servicio"
echo " 2.-Reiniciar Servicio"
echo " 3.-Apagar Servicio"
echo " 4.-Encender Servicio"
echo " 5.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1)sudo systemctl status plexmediaserver.service;; 
2)sudo service plexmediaserver restart;;
3)sudo service plexmediaserver stop;;
4)sudo service plexmediaserver start;;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0

# 192.168.100.22:32400/web

 
