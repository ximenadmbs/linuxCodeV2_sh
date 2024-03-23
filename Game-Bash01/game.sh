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
echo "[Versión 0.1 Marzo 2024]"
echo "(c) 2024 Ximena. Todos los derechos reservados. "
echo " *** Game Bash (Histirias de Aventuras) *** "
echo " "
cat datag/txintro
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo "	1.-Aceptar la aventura"
echo "	2.-Saber mas"
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/ini0101.sh;; 
2) clear && bash datag/sinop01.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
