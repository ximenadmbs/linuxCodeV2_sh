#!/bin/bash

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
echo "	1.-Regresar"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/cap1p1-2.sh;; 
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
