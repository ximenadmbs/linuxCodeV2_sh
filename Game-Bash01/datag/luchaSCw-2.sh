#!/bin/bash

printf "\033[1mFelicidades has ganado el conbate\033[0m\n"
echo " Obtubiste:"
echo "	+30 puntos de Experiencia"
echo "	+20 de Alimento:"
echo "	+Libreta de Ladrones:"
#cat datag/txcap1-3
echo " "
cat name
echo "----------------------------------------------------------------------"
echo "Alimento:"
cat datag/alim
echo "----------------------------------------------------------------------"
echo "Arma tipo:"
cat datag/armas
echo "----------------------------------------------------------------------"
echo "Vida:"
cat datag/vida
echo "----------------------------------------------------------------------"
echo "Puntos de experiencia:"
cat datag/exp
echo "----------------------------------------------------------------------"
echo " "
echo "	1.-Aseptar y seguir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/cap1p1-5.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
