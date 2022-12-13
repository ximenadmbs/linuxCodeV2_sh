#!/bin/bash
echo " "
echo -e "\e[0;38;5;129m                      I.       \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _  \e[0m"
echo -e "\e[0;38;5;135m             ..;I''   IXIMI 'I;;          \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..I'         XMMML    I;.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         I;   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.        I   _                _                         _\e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL      I  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*     I  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'          I   | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .I    | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | |  \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;I     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/     \e[0m"
echo -e "\e[0;38;5;159m          .;A    I            ..;I'                                                    |_|      \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;;I'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo "Ximena bash scrip [Versión 1.7]"
echo "(c) Corporation. Todos los derechos reservados."
    echo -e "\e[0;38;5;129m Edicion KDE neon \e[0m"
echo -e "\e[0;38;5;209m[Actualisador e intalador de completentos v1.2, se iniciara la instalacion.]\e[0m"
echo " "
#Seccion de instalacion de actualisaciones:
    pkcon refresh
    pkcon update -y
echo " "
echo -e "\e[0;38;5;200m[ ██ Se actualiso los paquetes del sistema\e[0m"
echo " "

#Seccion de Instalacion de repositorios:
    sudo add-apt-repository universe
    sudo add-apt-repository ppa:appimagelauncher-team/stable -y
    sudo apt update
    pkcon refresh
echo " "
echo -e "\e[0;38;5;209m[ ██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo apt install ubuntu-restricted-extras -y
    sudo apt install libfuse2 -y
    sudo apt install appimagelauncher -y
echo " "
echo -e "\e[0;38;5;209m[ ██ Se ha instalado componetes de sistema\e[0m"
echo " "

#Seccion de Instalacion de paquetes para la terminal:
    sudo apt install neofetch -y
    sudo apt install fish -y
    sudo apt install ssh -y
    sudo apt install net-tools -y
    sudo apt install samba -y
    sudo apt install nmap -y
    sudo apt install htop -y
    sudo apt install bpytop -y
    sudo apt install lm-sensors -y
echo " "

#Seccion de Instalacion de apps de interfacegrafica:
    sudo apt-get install cups-pdf
    sudo apt install xserver-xorg-input-synaptics
    sudo apt install tilix
    sudo apt install kcalc

    #Flatpak (si lansan error de instalacion reiniciar el sistema)
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        flatpak install flathub nl.hjdskes.gcolor3 -y

#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo apt install plank -y
echo " "
    neofetch
echo " "
echo -e "\e[0;38;5;129m                      I.       \e[0m"
echo -e "\e[0;38;5;129m                      XIm       \e[0m"
echo -e "\e[0;38;5;129m                  ....XIIm .               _    _ _  \e[0m"
echo -e "\e[0;38;5;135m             ..;I''   IXIMI 'I;;          \ \  / (_)   \e[0m"
echo -e "\e[0;38;5;135m..        ..I'         XMMML    I;.        \ \/ / _ ____   ____ ____   ____   \e[0m"
echo -e "\e[0;38;5;135m  '';..  ;P            XIMENA     'I.       )  ( | |    \ / _  )  _ \ / _  |  \e[0m"
echo -e "\e[0;38;5;141m     ''XXi+.           :IMENA:      ':     / /\ \| | | | ( (/ /| | | ( ( | |  \e[0m"
echo -e "\e[0;38;5;141m      .:''IMENAi:.     :XIMEN:       ':   /_/  \_\_|_|_|_|\____)_| |_|\_||_|  \e[0m"
echo -e "\e[0;38;5;141m      X    '':XIMENA:  :IMENA         I;   \e[0m"
echo -e "\e[0;38;5;147m      I        '';BACHSCRIPXIL.        I   _                _                         _\e[0m"
echo -e "\e[0;38;5;147m      M           '';XIMENABASHXL      I  | |              | |                       (_) \e[0m"
echo -e "\e[0;38;5;147m      E              ;XXXBASHP*''*     I  | | _   ____  ___| | _      ___  ____  ____ _ ____ \e[0m"
echo -e "\e[0;38;5;153m       N          .4XIMENAP'          I   | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \  \e[0m"
echo -e "\e[0;38;5;153m        A       .;XIMP''            .I    | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | |  \e[0m"
echo -e "\e[0;38;5;153m         'B. .;'' ;'              .;I     |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/     \e[0m"
echo -e "\e[0;38;5;159m          .;A    I            ..;I'                                                    |_|      \e[0m"
echo -e "\e[0;38;5;159m       .*'   '';I..       ..;;I'    \e[0m"
echo -e "\e[0;38;5;159m     ''       '    ''''''''         \e[0m"
echo " "
echo -e "\e[0;38;5;209m[ ██ Se acompleto la tarea de instalacion de KDE neon]\e[0m"
    date
echo " "


#chmod 777 installApps.sh
#Ejecutar con ./installApps.sh

# mié 28 sep 2022 21:06:45 CDT
# sáb 29 oct 2022 17:32:42 CDT
# mar 01 nov 2022 13:01:05 CST
# mié 30 nov 2022 12:57:06 CST
# mar 13 dic 2022 13:04:48 CST