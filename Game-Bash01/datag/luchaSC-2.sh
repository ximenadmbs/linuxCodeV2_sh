#!/bin/bash

echo " "
cat datag/txcap1-4a
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
1) echo "70" > datag/vida && clear && bash datag/luchaSC-2.sh;; 
2) echo "50" > datag/exp && echo "120" > datag/alim && echo "Libreta de Ladrones" >> datag/armas && clear && bash datag/luchaSCw-2.sh;;
3) echo "50" > datag/vida && clear && bash datag/luchaSC-2.sh;;
9) clear && bash datag/Inventario.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
