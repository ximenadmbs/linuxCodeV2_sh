#!/bin/bash

echo " "
echo "Por favor, introduce tu nombre:"
read texto
echo "$texto" > name

echo "100" > datag/vida
echo "0" > datag/exp
echo "Daga de mano usada: 30 de ataque" > datag/armas

clear && bash "datag/cap1p1.sh"
exit 1;;
esac
exit 0
