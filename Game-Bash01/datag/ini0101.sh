#!/bin/bash

echo " "
echo "Master: vienvenido/a a esta avetnuro/a, cual es tu nombre?"
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo "	1.-Dar tu nombre"
echo "	2.-Saltar y te llamaremos: Aventurero"
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/dnombre.sh;; 
2) clear && bash datag/cap1p1.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
