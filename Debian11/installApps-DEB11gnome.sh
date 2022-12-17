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
echo -e "\e[0;38;5;33m[Intalador de completentos para Debian11 gnome v1.1 ]\e[0m"
echo -e "\e[0;38;5;33m[Se recomienda ejecutar estas instrucciones como super usuario,"
echo -e "\e[0;38;5;33m[Se iniciara la instalacion.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
 	apt update
    apt upgrade -y
	apt autoclean
echo " "
echo -e "\e[0;38;5;33m██ Se actualiso los paquetes del sistema\e[0m"
#espera 2 segundo
        sleep 2s

#Seccion de Instalacion de repositorios:
	#add-apt-repository ppa:appimagelauncher-team/stable -y
	flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
	apt update

#appimagelauncher no es nesesario en xfce y genome debian11
echo " "
echo -e "\e[0;38;5;33m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "
        sleep 1s

#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
	apt install flatpak -y
	#apt install appimagelauncher -y
echo " "
#Seccion de Instalacion de paquetes para la terminal:
	apt install neofetch -y
	echo -e "\e[0;38;5;33m█ neofetch installed \e[0m"
        sleep 1s
	apt install htop -y
	echo -e "\e[0;38;5;33m█ htop installed \e[0m"
        sleep 1s
	apt install nmap -y
	echo -e "\e[0;38;5;33m█ nmap installed \e[0m"
        sleep 1s
	apt install net-tools -y
	echo -e "\e[0;38;5;33m█ net-tools installed \e[0m"
        sleep 1s
	apt install samba -y
	echo -e "\e[0;38;5;33m█ samba installed \e[0m"
        sleep 1s
	apt install ufw -y
	echo -e "\e[0;38;5;33m█ ufw installed \e[0m"
        sleep 1s
	apt install bpytop -y
	echo -e "\e[0;38;5;33m█ bpytop installed \e[0m"
        sleep 1s
	apt install fish -y
	echo -e "\e[0;38;5;33m█ fish installed \e[0m"
        sleep 1s
	apt install lm-sensors -y
	echo -e "\e[0;38;5;33m█ lm-sensors installed \e[0m"
        sleep 1s

#Seccion de Instalacion de apps de interfacegrafica:
	apt-get install cups-pdf
	echo -e "\e[0;38;5;33m█ cups-pdf installed \e[0m"
        sleep 1s
	apt install font-manager -y
	echo -e "\e[0;38;5;33m█ font-manager installed \e[0m"
        sleep 1s
echo " "

	#Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el instalador)
	echo -e "\e[0;38;5;33m█ Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el .sh\e[0m"
        sleep 2s
        flatpak install flathub com.mattjakeman.ExtensionManager -y
		echo -e "\e[0;38;5;33m█ Flatpak ExtensionManager installed \e[0m"
        	sleep 1s
        flatpak install flathub org.videolan.VLC -y
		echo -e "\e[0;38;5;33m█ Flatpak VLC installed \e[0m"
        	sleep 1s
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
		echo -e "\e[0;38;5;33m█ Flatpak system-monitoring-center installed \e[0m"
        	sleep 1s
        flatpak install flathub nl.hjdskes.gcolor3 -y
		echo -e "\e[0;38;5;33m█ Flatpak gcolor3 installed \e[0m"
        	sleep 1s
		
#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
	#apt install plank -y

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
echo -e "\e[0;38;5;33m[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
echo -e "\e[0;38;5;33m[ Reinicia el sistema antes de usar los paquetes instalados de Flatpak.]\e[0m"
	date
echo " "


#chmod 777 installApps-DEB11gnome.sh
#Ejecutar con ./installApps-DEB11gnome.sh

# mié 28 sep 2022 21:06:45 CDT
# sáb 29 oct 2022 17:32:42 CDT
# mar 01 nov 2022 13:01:05 CST
# mar 06 dic 2022 18:24:41 CST
# jue 08 dic 2022 19:05:43 CST
# jue 15 dic 2022 19:23:05 CST