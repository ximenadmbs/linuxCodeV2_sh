#!/bin/bash
clear
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Apagar equipo ahora"
echo " 2.-Reiniciar equipo ahora"
echo " 3.-Asignar hora de apagado del equipo"
echo " 4.-Apagar equipo a los xx minutos"
echo " 5.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
1)sudo shutdown -h now;; 
#sudo halt;;
2) sudo reboot;;
3) echo -n " ¿ A qué hora ?: "
read hora
sudo shutdown -h $hora;;
4)echo -n " ¿ En cuántos minutos se apagará el equipo?: "
read minutos
sudo shutdown -h $minutos;;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
 xit 1;;
esac
exit 0

# mie 09 nov 2022 14:45:34