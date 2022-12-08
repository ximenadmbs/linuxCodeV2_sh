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
echo "Ximena bash scrip (plex) [Versión 1.7]"
echo "(c) Corporation. Todos los derechos reservados, "
echo -e "\e[0;38;5;141mConfigurador de Puertos OpenSSH y 32400 del Servidor plex\e[0m"

#Se instalara el Contrafuegos ufw, si lla esta instalado pasara a las configuraciones.
    sudo apt install ufw
    #sudo ufw status

#se daran de alta los siguientes puertos.
    sudo ufw allow OpenSSH
    sudo ufw allow 32400

#Se habilitara el servicio y se mostrara el estado.
    sudo ufw enable
    sudo ufw status

    date
echo " "

#direccion de acceso: 192.168.100.???:32400/web

#chmod 777 plexOpen32400.sh
#Ejecutar con ./plexOpen32400.sh

# mar 01 nov 2022 13:01:05 CST
# jue 08 dic 2022 14:16:12 CST