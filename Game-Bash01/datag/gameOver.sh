#!/bin/bash

echo " "
echo "	Lamentablemente, al tomar una mala decisión, el aventurero cae en una gran depresión. La desilusión y la falta de esperanza lo consumen, y su espíritu aventurero se desvanece lentamente. Con el tiempo, la apatía se apodera de él, y su entusiasmo por la vida y la aventura se desvanece por completo."
echo " "
texto="Juego terminado"
ancho_terminal=$(tput cols)
printf "%*s\n" $(((${#texto}+$ancho_terminal)/2)) "$texto"
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo "	1.-Regresar ala pantalla de Inicio"
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/cap1p1.sh;; 
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
