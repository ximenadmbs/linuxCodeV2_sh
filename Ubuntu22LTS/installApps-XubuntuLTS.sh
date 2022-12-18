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
echo -e "\e[0;38;5;135m Instalador de completentos para servidor Xubuntu xfce\e[0m"
echo -e "\e[0;38;5;135m [Se iniciara la instalacion.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
 	sudo apt update
    sudo apt upgrade -y
	sudo apt autoclean
echo " "
echo -e "\e[0;38;5;135m██ Se actualiso los paquetes del sistema\e[0m"
#espera 2 segundo
        sleep 2s

    sudo add-apt-repository universe -y
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo apt update

echo " "
echo -e "\e[0;38;5;135m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "
        sleep 1s

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:

    sudo apt install ubuntu-restricted-extras -y
    echo -e "\e[0;38;5;135m█ ubuntu-restricted-extras installed \e[0m"
        sleep 1s
    sudo apt install gnome-software -y
    echo -e "\e[0;38;5;135m█ gnome-software installed \e[0m"
        sleep 1s
    sudo apt install flatpak -y
    echo -e "\e[0;38;5;135m█ flatpak installed \e[0m"
        sleep 1s
    sudo apt install gnome-software-plugin-flatpak -y
    echo -e "\e[0;38;5;135m█ gnome-software-plugin-flatpak installed \e[0m"
        sleep 1s

echo " "
#Seccion de Instalacion de paquetes para la terminal:
    sudo apt install neofetch -y
	echo -e "\e[0;38;5;135m█ neofetch installed \e[0m"
        sleep 1s
    sudo apt install htop -y
	echo -e "\e[0;38;5;135m█ htop installed \e[0m"
        sleep 1s
    #sudo apt install nmap -y
	#echo -e "\e[0;38;5;135m█ nmap installed \e[0m"
        sleep 1s
    sudo apt install net-tools -y
	echo -e "\e[0;38;5;135m█ net-tools installed \e[0m"
        sleep 1s
    sudo apt install samba -y
	echo -e "\e[0;38;5;135m█ samba installed \e[0m"
        sleep 1s
    sudo apt install bpytop -y
	echo -e "\e[0;38;5;135m█ bpytop installed \e[0m"
        sleep 1s
    sudo apt install fish -y
	echo -e "\e[0;38;5;135m█ fish installed \e[0m"
        sleep 1s
    sudo apt install lm-sensors -y
	echo -e "\e[0;38;5;135m█ lm-sensors installed \e[0m"
        sleep 1s
    sudo apt install proftpd -y
    echo -e "\e[0;38;5;135m█ proftpd FTP \e[0m"
        sleep 1s
#Administrador de discos de Gnome**
	sudo apt install gnome-disk-utility -y
    echo -e "\e[0;38;5;135m█ gnome-disk-utility installed \e[0m"
        sleep 1s

#Instalacion de plex media server
    #seccion de instalacion de herramintas nesesarias:
        sudo apt install apt-transport-https curl wget -y

    #Se bajaran los ficheros nesesarios:
        sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
        echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

    #se actualisara el sistema para la detencion de ficheros y se instalara el paquete.
        sudo apt update
        sudo apt install plexmediaserver -y

        echo -e "\e[0;38;5;135m█ plexmediaserver installed \e[0m"
            sleep 1s
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

#chmod 777 installApps-XubuntuLTS.sh
#Ejecutar con ./installApps-XubuntuLTS.sh

# mié 09 sep 2022 12:52:45 CDT
# mar 01 nov 2022 13:01:05 CST
# jue 15 dic 2022 18:35:39 CST
# sáb 17 dic 2022 14:48:04 CST