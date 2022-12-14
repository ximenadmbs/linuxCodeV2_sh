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
echo "Ximena bash scrip [Versión 1.7]"
echo "(c) Corporation. Todos los derechos reservados."
echo -e "\e[0;38;5;209m[Intalador de completentos para Debian11 server v1.2 ]\e[0m"
echo -e "\e[0;38;5;209m[Se recomienda elecutar estas instrucciones como super usuario,"
echo -e "\e[0;38;5;209m[Se iniciara la instalacion.]\e[0m"
        sleep 2s

#Seccion de instalacion de actualisaciones:
 	apt update
    apt upgrade -y
echo " "
echo -e "\e[0;38;5;209m██ Se actualiso los paquetes del sistema\e[0m"
        sleep 1s
	apt autoclean
echo " "

#Seccion de Instalacion de repositorios:
	apt install software-properties-common -y
	apt update

echo " "
echo -e "\e[0;38;5;209m██ Se instalaron nuevos repositorios y se actualiso la base de datos\e[0m"
        sleep 1s
echo " "

#Seccion de Instalacion de paquetes para la terminal:
	apt install neofetch -y
echo -e "\e[0;38;5;209m█ neofetch installed ✅\e[0m"
        sleep 1s
	apt install htop -y
echo -e "\e[0;38;5;209m█ htop installed ✅\e[0m"
        sleep 1s
	apt install nmap -y
echo -e "\e[0;38;5;209m█ nmap installed ✅\e[0m"
        sleep 1s
	apt install net-tools -y
echo -e "\e[0;38;5;209m█ net-tools installed ✅\e[0m"
        sleep 1s
	apt install samba -y
echo -e "\e[0;38;5;209m█ samba installed ✅\e[0m"
        sleep 1s
	apt install ufw -y
echo -e "\e[0;38;5;209m█ ufw installed ✅\e[0m"
        sleep 1s
	apt install bpytop -y
echo -e "\e[0;38;5;209m█ bpytop installed ✅\e[0m"
        sleep 1s
	apt install fish -y
echo -e "\e[0;38;5;209m█ fish installed ✅\e[0m"
        sleep 1s
	#apt install lm-sensors -y
	#apt install ssh -y
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
# jue 08 dic 2022 19:05:43 CST