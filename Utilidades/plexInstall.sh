#!/bin/bash

echo " "
echo "Ximena bash scrip (plex) [Versión 1.0]"
echo "(c) Corporation. Todos los derechos reservados, "
echo "Instalacion del Servidor plex"

sudo apt update
sudo apt upgrade

sudo apt install apt-transport-https curl wget -y
sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

sudo apt update

sudo apt install plexmediaserver -y

systemctl status plexmediaserver.service

echo "[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]"
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# mar 01 nov 2022 13:01:05 CST