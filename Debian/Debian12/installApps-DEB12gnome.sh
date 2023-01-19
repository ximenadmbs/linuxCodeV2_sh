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
echo -e "\e[0;38;5;125m[Intalador de completentos para Debian12 gnome v1.3 ]\e[0m"
echo -e "\e[0;38;5;125m[Se recomienda ejecutar estas instrucciones como super usuario, o con = sudo ./installApps-DEB12gnome.sh"
echo -e "\e[0;38;5;125m[Se iniciara la instalacion. Administrador de paquetes de Nala for the APT Command.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalacion de actualisaciones:
 	apt install nala -y
		sleep 2s
	nala update && nala upgrade -y
		sleep 1s
	nala autopurge
	nala clean
echo " "
echo -e "\e[0;38;5;125m██ Se actualiso los paquetes del sistema\e[0m"
#espera 2 segundo
        sleep 2s

#Seccion de Instalacion de repositorios:
	nala install flatpak -y
		sleep 1s
	flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
	nala update
echo " "
echo -e "\e[0;38;5;125m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
echo " "
        sleep 1s
#Seccion de Instalacion de paquetes librerias herramientas de personalisacion:
	nala install gnome-software-plugin-flatpak -y
	echo -e "\e[0;38;5;125m█ flatpak installed \e[0m"
        sleep 1s
echo " "
#Seccion de Instalacion de paquetes para la terminal:
	nala install neofetch -y
	echo -e "\e[0;38;5;125m█ neofetch installed \e[0m"
        sleep 1s
	nala install htop -y
	echo -e "\e[0;38;5;125m█ htop installed \e[0m"
        sleep 1s
	#apt install nmap -y
	#echo -e "\e[0;38;5;125m█ nmap installed \e[0m"
        sleep 1s
	nala install net-tools -y
	echo -e "\e[0;38;5;125m█ net-tools installed \e[0m"
        sleep 1s
	nala install samba -y
	echo -e "\e[0;38;5;125m█ samba installed \e[0m"
        sleep 1s
	nala install ufw -y
	echo -e "\e[0;38;5;125m█ ufw installed \e[0m"
        sleep 1s
	nala install bpytop -y
	echo -e "\e[0;38;5;125m█ bpytop installed \e[0m"
        sleep 1s
	nala install fish -y
	echo -e "\e[0;38;5;125m█ fish installed \e[0m"
        sleep 1s
	nala install lm-sensors -y
	echo -e "\e[0;38;5;125m█ lm-sensors installed \e[0m"
        sleep 1s

#Seccion de Instalacion de apps de interfacegrafica:
	nala install printer-driver-cups-pdf -y
	echo -e "\e[0;38;5;125m█ cups-pdf installed \e[0m"
        sleep 1s
	nala install font-manager -y
	echo -e "\e[0;38;5;125m█ font-manager installed \e[0m"
        sleep 1s
	nala install tilix -y
	echo -e "\e[0;38;5;125m█ tilix installed \e[0m"
        sleep 1s
echo " "

	#Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el instalador)
	echo -e "\e[0;38;5;125m█ Instalación de Paquetería Flatpak (si lanzan error de instalación reiniciar el .sh\e[0m"
        sleep 2s
        flatpak install flathub com.mattjakeman.ExtensionManager -y
		echo -e "\e[0;38;5;125m█ Flatpak ExtensionManager installed \e[0m"
        	sleep 1s
        flatpak install flathub org.videolan.VLC -y
		echo -e "\e[0;38;5;125m█ Flatpak VLC installed \e[0m"
        	sleep 1s
        flatpak install flathub io.github.hakandundar34coding.system-monitoring-center -y
		echo -e "\e[0;38;5;125m█ Flatpak system-monitoring-center installed \e[0m"
        	sleep 1s
        flatpak install flathub nl.hjdskes.gcolor3 -y
		echo -e "\e[0;38;5;125m█ Flatpak gcolor3 installed \e[0m"
        	sleep 1s
		
#El escritirio tiene que ser Xorg, para el funcionaminto de plank, tambien para el funcionaminto de xset led3
		#apt install plank -y
		#echo -e "\e[0;38;5;125m█ plank installed \e[0m"
				#sleep 1s
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
echo -e "\e[0;38;5;125m[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]\e[0m"
echo -e "\e[0;38;5;125m[ Reinicia el sistema antes de usar los paquetes instalados de Flatpak.]\e[0m"
echo -e "\e[0;38;5;125m[ Ahora es nesesario instalar las plantillas de usuario: ejecutar las instrucciones ./plantillas-DEB12gnome.sh como usuario comun.]\e[0m"

	date
echo " "


#chmod 777 installApps-DEB11gnome.sh
#Ejecutar con ./installApps-DEB11gnome.sh o con = sudo ./installApps-DEB11gnome.sh

# mié 28 sep 2022 21:06:45 CDT
# sáb 29 oct 2022 17:32:42 CDT
# mar 01 nov 2022 13:01:05 CST
# mar 06 dic 2022 18:24:41 CST
# jue 08 dic 2022 19:05:43 CST
# jue 15 dic 2022 19:23:05 CST
# Debian12 v1.3
# 	mar 17 ene 2023 13:25:35 CST