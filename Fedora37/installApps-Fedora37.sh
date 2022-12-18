#!/bin/bash

echo "."
echo "                    l.                     _    _ _  "
echo "                    llb                   \ \  / (_) "
echo "             ..:''  lllb l:                \ \/ / _ ____   ____ ____   ____  "
echo "  '::.     .:'      llllb  ':.              )  ( | |    \ / _  )  _ \ / _  | "
echo "      ''l::         llllb   'l.            / /\ \| | | | ( (/ /| | | ( ( | | "
echo "         ;'lllb:.    llllP     l          /_/  \_\_|_|_|_|\____)_| |_|\_||_| "
echo "        :    'lllllb lllli      l     "
echo "        l       'QllllllllL.    l          _                _                         _"
echo "        l          :llllllPl.   l         | |              | |                       (_) "
echo "         l       .:llllP'      l'         | | _   ____  ___| | _      ___  ____  ____ _ ____"
echo "          l    .;llP'        .l'          | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \ "
echo "           'l.' .'         .lP'           | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | "
echo "         .-' ':+..     ..+l'              |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  "
echo "       '     '    '''''                                                                |_|    "
echo "."
echo "Ximena bash scrip [Versión 1.6]"
echo "(c) Corporation. Todos los derechos reservados."
echo "██ Instalador de completentos, se iniciara la instalacion."
echo " "
sudo dnf update
sudo dnf upgrade

echo "."
echo "██ se actualiso la base de datos"
echo "."
#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
sudo dnf install gnome-tweaks -y
echo "."
echo "██ Se ha instalo componetes de sistema"
echo "."
#Seccion de Instalacion de paquetes para la terminal:
sudo dnf install neofetch -y
sudo dnf install htop -y
sudo dnf install cmatrix -y
sudo dnf install samba -y
sudo dnf install bpytop -y
sudo dnf install fish -y
# ssh ya instalado, activarlo:
	systemctl start sshd.service

#Seccion de Instalacion de apps de interfacegrafica:
sudo dnf install cups-pdf -y

flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
flatpak install flathub nl.hjdskes.gcolor3 -y
flatpak install flathub org.gnome.FontManager -y

#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo dnf install plank -y
#Notas: para busquedas de paquetes rpm del repositorio [dnf search paquete] 

echo "."
neofetch
echo "██ :::::Se acompleto la tarea de instalacion:::::]]]]"
date
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# sáb 17 dic 2022 15:41:45 CST
