#!/bin/bash

echo " "
cat datag/txcap1-3a
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1) clear && bash datag/gameOver.sh;; 
2) clear && bash datag/cap1p1-4.sh;;
3) clear && bash datag/gameOver.sh;;
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
