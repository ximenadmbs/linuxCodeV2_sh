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
echo -e "\e[0;38;5;141m ██ Instalador de completentos para XubuntuLTS xfce, se iniciara la instalacion.\e[0m"
echo " "
#BETA AUN NO PROBADO ALA FECHA vie 09 dic 2022 12:12:13 CST
    sudo add-apt-repository universe
    sudo add-apt-repository ppa:appimagelauncher-team/stable -y
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo apt update
echo "."
echo "██ Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."
    sudo apt install gnome-tweaks -y
    sudo apt install ubuntu-restricted-extras -y
    sudo apt install gnome-software -y
    sudo apt install gnome-software-plugin-flatpak -y
    sudo apt install flatpak -y
echo "."
echo "██ Se ha instalo la tienda de aplicaciones, y componetes de sistema"
echo "."
    sudo apt install libfuse2 -y
    sudo apt install appimagelauncher -y
echo "."
echo "██ Se ha instalado la libreria libfuse2 que resuelve la ejecucion de los archivos .AppImage"
echo "."
    sudo apt install neofetch -y
    sudo apt install htop -y
    sudo apt install nmap -y
    sudo apt install cmatrix -y
    sudo apt install net-tools -y
    sudo apt install samba -y
    sudo apt install bpytop -y
    sudo apt install fish -y
    sudo apt install lm-sensors -y
    sudo apt install sl -y
    sudo apt install figlet -y
    sudo apt install ssh -y
    sudo apt install cups-pdf
    sudo apt install font-manager

        flatpak install flathub com.mattjakeman.ExtensionManager -y
        flatpak install flathub org.videolan.VLC -y
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        flatpak install flathub nl.hjdskes.gcolor3 -y

echo "."
    neofetch
echo "██ :::::Se acompleto la tarea de instalacion:::::]]]]"
    date
echo " "

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST
# jue 15 dic 2022 18:35:39 CST