#!/bin/bash

    clear
echo " "
echo "                 llll  "
echo "                 llll  "
echo -e " pppp .ppppp.    llll    .eeeeeee. \e[0;38;5;178m'xxxx.\e[0m   .xxxx'  "
echo -e " ppppppppppppp.  llll   eeeee''eeee. \e[0;38;5;178m'xxxx.\e[0m'xxxx'  "
echo -e " pppp'     'ppp. llll  eeee'    'eee. \e[0;38;5;178m'xxxx.\e[0m'xx'  "
echo -e " pppp       pppi llll  eeeeeeeeeeeeee  \e[0;38;5;178m'xxxx>\e[0m'  "
echo -e " pppp.     .ppp' llll  eeee           \e[0;38;5;178m.xxxx'\e[0m.xx. "
echo -e " pppppp,,,pppp'  lllll  eeee...eeee; \e[0;38;5;178m.xxxx'\e[0m.xxxx. "
echo -e " pppp pppppp'     llll'  'eeeeeee;  \e[0;38;5;178m.xxxx'\e[0m  'xxxx.  "
echo -e " pppp   '''        ''       ''''    \e[0;38;5;178m'''''\e[0m     '''''  "
echo -e " pppp  "
echo -e " '''  "
echo " "
echo " ██ PLEX STATUS: SELECCIONA UNA OPCIÓN v.1.0.1 ██"
echo " 1.-Estatus Servicio"
echo " 2.-Reiniciar Servicio"
echo " 3.-Apagar Servicio"
echo " 4.-Encender Servicio"
echo " 5.-Salir"
echo " "
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

# direccion de acceso: 192.168.100.???:32400/web

# mar 01 nov 2022 13:01:05 CST
# jue 08 dic 2022 14:16:12 CST