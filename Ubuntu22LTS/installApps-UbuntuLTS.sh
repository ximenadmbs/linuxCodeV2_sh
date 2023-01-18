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
echo -e "\e[0;38;5;208m[Actualisador e intalador de completentos para Ubuntu LTS.\e[0m"
echo -e "\e[0;38;5;208m[Se iniciara la instalacion.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
 	sudo apt update
    sudo apt upgrade -y
	sudo apt autoclean
echo " "
echo -e "\e[0;38;5;208m██ Se actualiso los paquetes del sistema\e[0m"
#espera 2 segundo
        sleep 2s

#Seccion de Instalacion de repositorios:
    sudo add-apt-repository universe -y
    sudo add-apt-repository ppa:appimagelauncher-team/stable -y
    sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo add-apt-repository ppa:helkaluin/webp-pixbuf-loader -y
    sudo apt update

echo " "
echo -e "\e[0;38;5;208m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "
        sleep 1s

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo apt install nala -y
    echo -e "\e[0;38;5;208m█ nala installed \e[0m"
        sleep 1s
    sudo apt install webp-pixbuf-loader -y
    echo -e "\e[0;38;5;208m█ webp-pixbuf-loader installed \e[0m"
        sleep 1s
    sudo apt install gnome-tweaks -y
    echo -e "\e[0;38;5;208m█ gnome-tweaks installed \e[0m"
        sleep 1s
    sudo apt install gnome-shell-extensions -y
    echo -e "\e[0;38;5;208m█ gnome-shell-extensions installed \e[0m"
        sleep 1s
    sudo apt install ubuntu-restricted-extras -y
    echo -e "\e[0;38;5;208m█ ubuntu-restricted-extras installed \e[0m"
        sleep 1s
    sudo apt install gnome-software -y
    echo -e "\e[0;38;5;208m█ gnome-software installed \e[0m"
        sleep 1s
    sudo apt install gnome-software-plugin-flatpak -y
    echo -e "\e[0;38;5;208m█ gnome-software-plugin-flatpak installed \e[0m"
        sleep 1s
    sudo apt install libfuse2 -y
    echo -e "\e[0;38;5;208m█ libfuse2 installed \e[0m"
        sleep 1s
    sudo apt install appimagelauncher -y
    echo -e "\e[0;38;5;208m█ appimagelauncher installed \e[0m"
        sleep 1s
    sudo apt install flatpak -y
    echo -e "\e[0;38;5;208m█ flatpak installed \e[0m"
        sleep 1s
echo " "
echo -e "\e[0;38;5;208m██ Se ha instaladoo la tienda de aplicaciones, y componetes de sistema\e[0m"
echo " "

#Seccion de Instalacion de paquetes para la terminal:
    sudo apt install neofetch -y
    cho -e "\e[0;38;5;208m█ neofetch installed \e[0m"
        sleep 1s
    sudo apt install fish -y
    echo -e "\e[0;38;5;208m█ fish installed \e[0m"
        sleep 1s
    sudo apt install ssh -y
    echo -e "\e[0;38;5;208m█ ssh installed \e[0m"
        sleep 1s
    sudo apt install net-tools -y
    echo -e "\e[0;38;5;208m█ net-tools installed \e[0m"
        sleep 1s
    sudo apt install htop -y
    echo -e "\e[0;38;5;208m█ htop installed \e[0m"
        sleep 1s
    sudo apt install bpytop -y
    echo -e "\e[0;38;5;208m█ bpytop installed \e[0m"
        sleep 1s
    sudo apt install lm-sensors -y
    echo -e "\e[0;38;5;208m█ lm-sensors installed \e[0m"
        sleep 1s
    sudo apt install cmatrix -y
    echo -e "\e[0;38;5;208m█ cmatrix installed \e[0m"
        sleep 1s
#deprecated
    #sudo apt install cmake -y
    #sudo apt install alien
    #sudo apt install nmap -y
    #sudo apt install samba -y

#Seccion de Instalacion de apps de interfacegrafica:
    sudo apt install cups-pdf -y
    echo -e "\e[0;38;5;208m█ cups-pdf installed \e[0m"
        sleep 1s
    sudo apt install font-manager -y
    echo -e "\e[0;38;5;208m█ font-manager installed \e[0m"
        sleep 1s
echo " "

    #sudo apt install python3-pip libqt5gui5 libqt5widgets5 qt5-gtk-platformtheme libqt5x11extras5 libqt5svg5 libqt5dbus5 sqlite3 -y
    #sudo pip3 install bauh -y

#Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el instalador)
	echo -e "\e[0;38;5;208m█ Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el .sh\e[0m"
        sleep 2s
        sudo flatpak install flathub com.mattjakeman.ExtensionManager -y
        echo -e "\e[0;38;5;208m█ flatpak ExtensionManager installed \e[0m"
            sleep 1s
        sudo flatpak install flathub org.videolan.VLC -y
        echo -e "\e[0;38;5;208m█ flatpak VLC installed \e[0m"
            sleep 1s
        sudo flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        echo -e "\e[0;38;5;208m█ flatpak system-monitoring-center installed \e[0m"
            sleep 1s
        sudo flatpak install flathub nl.hjdskes.gcolor3 -y
        echo -e "\e[0;38;5;208m█ flatpak gcolor3 installed \e[0m"
            sleep 1s
echo " "

#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo apt install plank -y

#Seccion de instalaciones de Plantillas y complementos personalisados.
    echo " Instalando las plantillas en ~/Plantillas"
    touch $HOME/Plantillas/'Documento txt.txt'
        echo ". " >> $HOME/Plantillas/'Documento txt.txt'

    touch $HOME/Plantillas/'Documento md.md'
        echo "# Titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> $HOME/Plantillas/'Documento md.md'
        echo "> Comentario" >> $HOME/Plantillas/'Documento md.md'
        echo "* Vineta" >> $HOME/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C $HOME/Plantillas

    	cp -r fish/ $HOME/.config/
    echo " Instalando de bienvenida para fish en ~/.config/fish/"
echo " "
        echo -ne '[#---------------------------------] ( 03%)\r'
sleep 0.1
        echo -ne '[#########-------------------------] ( 24%)\r'
sleep 0.1
        echo -ne '[##################----------------] ( 51%)\r'
sleep 0.1
        echo -ne '[##########################--------] ( 75%)\r'
sleep 0.1
        echo -ne '[##################################] (100%)\r'
sleep 0.1
        echo -ne '\n'
echo " "
echo -e "\e[0;38;5;208m█ Se instalaron las plantillas\e[0m"
            sleep 1s
echo " "
echo -ne 'Terminando: - \r'
    sleep 0.3
echo -ne 'Terminando: \ \r'
    sleep 0.3
echo -ne 'Terminando: | \r'
    sleep 0.3
echo -ne 'Terminando: / \r'
    sleep 0.3
echo -ne 'Terminando: - \r'
    sleep 0.3
echo -ne 'Terminando: \ \r'
    sleep 0.3
echo -ne 'Terminando: | \r'
    sleep 0.3
echo -ne 'Terminando: / \r'
    sleep 0.3
echo -ne 'Terminando: OK \r'
    sleep 1s
echo -ne '\n'
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
echo -e "\e[0;38;5;208m🦄 :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
echo -e "\e[0;38;5;208m[Reinicia el sistema antes de usar los paquetes instalados de Flatpak.]\e[0m"
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
# sáb 17 dic 2022 19:14:01 CST
# mar 03 ene 2023 19:53:42 CST