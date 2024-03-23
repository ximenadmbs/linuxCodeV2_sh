#!/bin/bash

echo " "
echo " ¡Felicidades por completar tu aventura con éxito y descubrir el gran botín! Has utilizado tus habilidades para descifrar el código y abrir la puerta, lo que te ha llevado a un inesperado tesoro de efectivo y monedas. Con tu nuevo tesoro, te retiras del mundo de los mensajeros y corresos y te embarcas en una nueva vida, disfrutando de la riqueza y la seguridad que has ganado."
echo " "
echo " ¡Gracias por jugar y espero que hayas disfrutado de tu experiencia en este juego de rol estilo Dungeons & Dragons! Si alguna vez deseas embarcarte en otra aventura, ¡no dudes en volver!"
echo " "
echo " - TrustWallet: Tu semilla es:"
echo " inject celery melody best service uphold hold amateur icon forest person parrot"
echo " "
texto="Juego terminado"
ancho_terminal=$(tput cols)
printf "%*s\n" $(((${#texto}+$ancho_terminal)/2)) "$texto"
echo " "
echo " SELECCIONA UNA OPCIÓN:"
echo "	0.-Salir"
echo " "
read -p "OPCIÓN: " OPCION
case $OPCION in
0) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
