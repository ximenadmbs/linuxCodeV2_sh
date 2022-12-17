#!/bin/bash
echo " "
echo -e "\e[0;38;5;129m                      I.        \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _    \e[0m"
echo -e "\e[0;38;5;135m             ..;I''   IXIMI 'I;;          \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..I'         XMMML    I;.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         I;   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.        I   _                _                         _  \e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL      I  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*     I  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'          I   | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .I    | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;I     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  \e[0m"
echo -e "\e[0;38;5;159m          .;A    I            ..;I'                                                    |_|     \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;;I'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo "Ximena bash scrip [Versión 1.7]"
echo "(c) Corporation. Todos los derechos reservados."
echo -e "\e[0;38;5;135m[Actualisador e intalador de completentos v1.2 para Ubuntu, se iniciara la instalacion.]\e[0m"
echo " "
#Seccion de instalacion de actualisaciones:
    sudo apt update
    sudo apt upgrade -y
echo " "
echo -e "\e[0;38;5;135m[ ██ Se actualiso los paquetes del sistema\e[0m"
    sudo apt-get autoclean
echo " "

#Seccion de Instalacion de repositorios:
    sudo add-apt-repository universe
    sudo add-apt-repository ppa:appimagelauncher-team/stable -y
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo apt update
echo " "
echo -e "\e[0;38;5;135m[ ██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo apt install gnome-tweaks -y
    sudo gnome-shell-extensions -y
    sudo apt install ubuntu-restricted-extras -y
    sudo apt install gnome-software -y
    sudo apt install gnome-software-plugin-flatpak -y
    sudo apt install libfuse2 -y
    sudo apt install appimagelauncher -y
    sudo apt install flatpak -y
echo " "
echo -e "\e[0;38;5;135m[ ██ Se ha instaladoo la tienda de aplicaciones, y componetes de sistema\e[0m"
echo " "

#Seccion de Instalacion de paquetes para la terminal:
    sudo apt install neofetch -y
    sudo apt install fish -y
    sudo apt install ssh -y
    sudo apt install net-tools -y
    sudo apt install samba -y
    sudo apt install htop -y
    sudo apt install bpytop -y
    sudo apt install lm-sensors -y
    sudo apt install cmatrix -y
#deprecated
    #sudo apt install cmake -y
    #sudo apt install alien
    #sudo apt install nmap -y
echo " "

#Seccion de Instalacion de apps de interfacegrafica:
    sudo apt install cups-pdf
    sudo apt install font-manager
    #sudo apt install python3-pip libqt5gui5 libqt5widgets5 qt5-gtk-platformtheme libqt5x11extras5 libqt5svg5 libqt5dbus5 sqlite3 -y
    #sudo pip3 install bauh -y

    #Flatpak (si lansan error de instalacion reiniciar el sistema)
        flatpak install flathub com.mattjakeman.ExtensionManager -y
        flatpak install flathub org.videolan.VLC -y
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        flatpak install flathub nl.hjdskes.gcolor3 -y

#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo apt install plank -y

#Seccion de instalaciones de Plantillas y complementos personalisados.
    touch ~/Plantillas/'Documento txt.txt'
        echo ". " >> ~/Plantillas/'Documento txt.txt'

    touch ~/Plantillas/'Documento md.md'
        echo "# Titulo" >> ~/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> ~/Plantillas/'Documento md.md'
        echo "> Comentario" >> ~/Plantillas/'Documento md.md'
        echo "* Vineta" >> ~/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C ~/Plantillas
echo " Se instalaron las plantillas en ~/Plantillas"

    	cp config.fish ~/.config/fish/
echo " Se intalo titulo de bienvenida para fish en ~/.config/fish/"

echo " "
    neofetch
echo " "
echo -e "\e[0;38;5;129m                      I.        \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _    \e[0m"
echo -e "\e[0;38;5;135m             ..;I''   IXIMI 'I;;          \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..I'         XMMML    I;.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         I;   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.        I   _                _                         _  \e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL      I  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*     I  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'          I   | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .I    | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;I     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  \e[0m"
echo -e "\e[0;38;5;159m          .;A    I            ..;I'                                                    |_|     \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;;I'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo -e "\e[0;38;5;135m[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
    date
echo " "

#chmod 777 installApps-UbuntuLTS.sh
#Ejecutar con ./installApps-UbuntuLTS.sh

# mié 09 sep 2022 12:52:45 CDT
# mié 28 sep 2022 21:06:45 CDT
# sáb 29 oct 2022 17:32:42 CDT
# mar 01 nov 2022 13:01:05 CST
# mié 30 nov 2022 12:57:06 CST
# dom 04 dic 2022 13:20:49 CST