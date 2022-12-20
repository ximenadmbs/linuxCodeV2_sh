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
echo -e "\e[0;38;5;75m[Actualisador e intalador de completentos para Fedora36, 37.\e[0m"
echo -e "\e[0;38;5;75m[Se iniciara la instalacion.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
    sudo dnf update
    sudo dnf upgrade
echo " "
echo -e "\e[0;38;5;75m██ Se actualiso los paquetes del sistema\e[0m"
#espera 2 segundo
        sleep 2s

#Seccion de Instalacion de repositorios:
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo " "
echo -e "\e[0;38;5;75m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "
        sleep 1s
echo " "

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
    sudo dnf install gnome-tweaks -y
    echo -e "\e[0;38;5;75m█ gnome-tweaks installed \e[0m"
        sleep 1s
echo " "
echo -e "\e[0;38;5;75m██ Se ha instalo componetes de sistema \e[0m"
echo " "

#Seccion de Instalacion de paquetes para la terminal:
    sudo dnf install neofetch -y
    echo -e "\e[0;38;5;75m█ neofetch installed \e[0m"
        sleep 1s
    sudo dnf install htop -y
    echo -e "\e[0;38;5;75m█ htop installed \e[0m"
        sleep 1s
    sudo dnf install cmatrix -y
    echo -e "\e[0;38;5;75m█ cmatrix installed \e[0m"
        sleep 1s
    #sudo dnf install samba -y
    #echo -e "\e[0;38;5;75m█ samba installed \e[0m"
    #   sleep 1s
    sudo dnf install bpytop -y
    echo -e "\e[0;38;5;75m█ bpytop installed \e[0m"
        sleep 1s
    sudo dnf install fish -y
    echo -e "\e[0;38;5;75m█ fish installed \e[0m"
        sleep 1s
echo " "
# ssh ya instalado, activarlo:
	systemctl start sshd.service
    echo -e "\e[0;38;5;75m█ sshd service active \e[0m"
        sleep 1s

#Seccion de Instalacion de apps de interfacegrafica:
    sudo dnf install cups-pdf -y
    echo -e "\e[0;38;5;75m█ cups-pdf installed \e[0m"
        sleep 1s
echo " "
#Instalación de Paquetería Flatpak (Fedora 37 ya cuenta con flatpak)
    echo -e "\e[0;38;5;75m██ Instalación de Paquetería Flatpak.\e[0m"
            sleep 2s
        flatpak install flathub com.mattjakeman.ExtensionManager -y
        echo -e "\e[0;38;5;75m█ Extension Manager installed \e[0m"
            sleep 1s
        flatpak install flathub org.videolan.VLC -y
        echo -e "\e[0;38;5;75m█ VLC installed \e[0m"
            sleep 1s
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
        echo -e "\e[0;38;5;75m█ system-monitoring-center installed \e[0m"
            sleep 1s
        flatpak install flathub nl.hjdskes.gcolor3 -y
        echo -e "\e[0;38;5;75m█ gcolor3 installed \e[0m"
            sleep 1s
        flatpak install flathub org.gnome.FontManager -y
        echo -e "\e[0;38;5;75m█ FontManager installed \e[0m"
            sleep 1s
echo " "
#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
    #sudo dnf install plank -y

#Seccion de instalaciones de Plantillas y complementos personalisados.
    echo " Instalando las plantillas en ~/Plantillas"
    touch ~/Plantillas/'Documento txt.txt'
        echo ". " >> ~/Plantillas/'Documento txt.txt'

    touch ~/Plantillas/'Documento md.md'
        echo "# Titulo" >> ~/Plantillas/'Documento md.md'
        echo "### Sub titulo" >> ~/Plantillas/'Documento md.md'
        echo "> Comentario" >> ~/Plantillas/'Documento md.md'
        echo "* Vineta" >> ~/Plantillas/'Documento md.md'

    tar -Jxvf plantillas.tar.xz -C ~/Plantillas

    	cp -r fish/ ~/.config/
echo " Instalando de bienvenida para fish en ~/.config/fish/"
echo " "
echo -e "\e[0;38;5;75m█ Se instalaron las plantillas\e[0m"
            sleep 1s
echo " "
    neofetch
echo -e "\e[0;38;5;75m██ :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
    date
echo " "

#Notas: para busquedas de paquetes rpm del repositorio [dnf search paquete] 
#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

# sáb 17 dic 2022 15:41:45 CST
# dom 18 dic 2022 12:24:08 CST