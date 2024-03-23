#!/bin/bash

echo " "
cat datag/txsinop1
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo "	1.-Seguir lellendo"
echo "	2.-Entrar ala aventura"
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/sinop02.sh;; 
2) clear && bash datag/ini0101.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
