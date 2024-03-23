#!/bin/bash

echo " "
echo "vienvenido/a a esta avetnura," && cat name
echo " "

texto="CAPITULO 1"
ancho_terminal=$(tput cols)
printf "%*s\n" $(((${#texto}+$ancho_terminal)/2)) "$texto"

texto="Enviado por Correos"
ancho_terminal=$(tput cols)
printf "%*s\n" $(((${#texto}+$ancho_terminal)/2)) "$texto"

#printf "\033[3mTexto en cursiva\033[0m\n"

#printf "\033[1mTexto en negrita\033[0m\n"

echo " "
cat datag/txcap1
cat name
echo "--------------------------------------------------------------------"
echo "Una vez que el jugador elija una opción, podrías desarrollar la trama en función de su elección, introduciendo personajes y desafíos relevantes para cada camino."
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/cap1p1-1.sh;; 
2) clear && bash datag/gameOver.sh;;
3) clear && bash datag/gameOver.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
