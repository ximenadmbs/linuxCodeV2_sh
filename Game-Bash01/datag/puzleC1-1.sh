#!/bin/bash

echo " "
cat datag/txcap1-5a
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/puzleC1-1a.sh;; 
2) echo "70" > datag/exp && echo "Mapa de bases" >> datag/armas && echo "Apuntes de Bodega" >> datag/armas && clear && bash datag/luchaSCw-2a.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
