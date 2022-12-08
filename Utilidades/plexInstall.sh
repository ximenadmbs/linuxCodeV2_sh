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
echo "Instalacion del Servidor plex"

#se actualisara el sistema antes de la instalacion:
    sudo apt update
    sudo apt upgrade

#seccion de instalacion de herramintas nesesarias:
    sudo apt install apt-transport-https curl wget -y

#Se bajaran los ficheros nesesarios:
    sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
    echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

#se actualisara el sistema para la detencion de ficheros y se instalara el paquete.
    sudo apt update
    sudo apt install plexmediaserver -y

#Se muestra el estatus del servicio de plex:
    systemctl status plexmediaserver.service

echo "██ :::::Se acompleto la tarea de instalacion:::::"
echo " "
    date

#chmod 777 plexInstall.sh
#Ejecutar con ./plexInstall.sh

# mar 01 nov 2022 13:01:05 CST
# jue 08 dic 2022 14:16:12 CST