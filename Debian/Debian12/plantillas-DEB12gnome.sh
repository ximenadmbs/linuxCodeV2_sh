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
echo -e "\e[0;38;5;125m[Intalador de plantillas para gnome para Debian 12.]\e[0m"
echo -e "\e[0;38;5;125m[Se recomienda ejecutar estas instrucciones como usuario comun.]\e[0m"
#espera 1 segundo
        sleep 2s
echo " "
#Seccion de instalaciones de Plantillas y complementos personalisados.
    echo " Instalando las plantillas en ~/Plantillas"
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
echo -e "\e[0;38;5;125m█ Se instalaron las plantillas\e[0m"
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
	date
echo " "

#chmod 777 plantillas-DEB12gnome.sh
#Ejecutar con ./installApps-DEB11gnome.sh
# jue 15 dic 2022 19:23:05 CST
# Debian12 v1.3
# 	mar 17 ene 2023 13:25:35 CST