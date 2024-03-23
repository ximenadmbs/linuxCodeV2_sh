#!/bin/bash

echo " "
cat datag/txcap1-4
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/gameOver.sh;; 
2) clear && bash datag/gameOver.sh;;
3) clear && bash datag/luchaSC-2.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
