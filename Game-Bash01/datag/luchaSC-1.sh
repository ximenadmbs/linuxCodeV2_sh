#!/bin/bash

echo " "
cat datag/txcap1-3
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
read -p "OPCIÓN: " OPCION
case $OPCION in
1) echo "90" > datag/vida && clear && bash datag/luchaSC-1.sh;; 
2) echo "20" > datag/exp && clear && bash datag/luchaSCw-1.sh;;
3) echo "80" > datag/vida && clear && bash datag/luchaSC-1.sh;;
9) clear && bash datag/Inventario.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
