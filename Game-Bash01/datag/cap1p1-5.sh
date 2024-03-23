#!/bin/bash

echo " "
cat datag/txcap1-5
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/puzleC1-1.sh;; 
2) clear && bash datag/gameOver.sh;;
3) clear && bash datag/gameOver.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
