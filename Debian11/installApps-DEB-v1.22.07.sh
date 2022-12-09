#!/bin/bash

echo " "
echo -e "\e[0;38;5;129m                      I        \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _  \e[0m"
echo -e "\e[0;38;5;135m             ..LP'    IXIMI 'YL           \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..X'         XMMML    IX.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         :,   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.       ::   _                _                         _\e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL     ::  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*    :;  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'         ,;'  | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .;'   | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | |  \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;'     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/     \e[0m"
echo -e "\e[0;38;5;159m          .;A    i            ..;'                                                     |_|      \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;IP'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo "Ximena bash scrip [Versión 1.22.07]"
echo "(c) Corporation. Todos los derechos reservados."
echo -e "\e[0;38;5;209m[Intalador de completentos v1.0.9, se iniciara la instalacion.]\e[0m"

#Seccion de instalacion de actualisaciones:
 	sudo apt update
    sudo apt upgrade -y
echo " "
echo -e "\e[0;38;5;200m██ Se actualiso los paquetes del sistema\e[0m"
    sudo apt-get autoclean
echo " "

#Seccion de Instalacion de repositorios:
	sudo apt-get install software-properties-common -y
	#sudo add-apt-repository universe
	#sudo add-apt-repository ppa:appimagelauncher-team/stable -y
	sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
	sudo apt update

#appimagelauncher no es nesesario en xfce y genome debian

echo " "
echo -e "\e[0;38;5;209m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
	#sudo apt install ubuntu-restricted-extras -y
	sudo apt install gnome-tweaks -y
	sudo gnome-shell-extensions -y
	sudo apt install gnome-software -y
	sudo apt install flatpak
	sudo apt install libfuse2 -y
	#sudo apt install appimagelauncher -y
echo " "

#Seccion de Instalacion de paquetes para la terminal:
	sudo apt install neofetch -y
	sudo apt install htop -y
	sudo apt install nmap -y
	sudo apt install net-tools -y
	#sudo apt-get install samba -y
	#sudo apt install ufw -y
	sudo apt install bpytop -y
	sudo apt install fish -y
	sudo apt install lm-sensors -y
	#sudo apt install ssh -y
echo " "

#Seccion de Instalacion de apps de interfacegrafica:
	sudo apt-get install cups-pdf
	#sudo apt install font-manager
	#sudo apt install python3-pip libqt5gui5 libqt5widgets5 qt5-gtk-platformtheme libqt5x11extras5 libqt5svg5 libqt5dbus5 sqlite3 -y
	#sudo pip3 install bauh

	#Flatpak (si lansan error de instalacion reiniciar el sistema)
        flatpak install flathub com.mattjakeman.ExtensionManager -y
        flatpak install flathub org.videolan.VLC -y
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        flatpak install flathub nl.hjdskes.gcolor3 -y
	
#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
	#sudo apt install plank -y
echo " "

	neofetch
echo " "
echo -e "\e[0;38;5;129m                      I        \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _  \e[0m"
echo -e "\e[0;38;5;135m             ..LP'    IXIMI 'YL           \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..X'         XMMML    IX.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         :,   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.       ::   _                _                         _\e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL     ::  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*    :;  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'         ,;'  | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .;'   | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | |  \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;'     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/     \e[0m"
echo -e "\e[0;38;5;159m          .;A    i            ..;'                                                     |_|      \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;IP'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo -e "\e[0;38;5;209m[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
	date
echo " "


#chmod 777 installApps.sh
#Ejecutar con ./installApps.sh

# mié 28 sep 2022 21:06:45 CDT
# sáb 29 oct 2022 17:32:42 CDT
# mar 01 nov 2022 13:01:05 CST
# mar 06 dic 2022 18:24:41 CST