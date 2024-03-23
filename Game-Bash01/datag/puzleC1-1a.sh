#!/bin/bash

echo " "
#cat datag/txcap1-5a
echo "Escudriñas los documentos en busca de algún código o contraseña que pueda servir como llave para abrir la puerta. ¿Encuentras alguna secuencia de números, letras o símbolos que parezcan relevantes? ¿Cómo intentarás utilizar esta información para abrir la cerradura?"
echo " "
cat datag/codtex
echo " "
# Solicitar al usuario que introduzca un texto
echo "Por favor, introduce el codigo correcto:"
read texto_ingresado

# Verificar si el texto ingresado es correcto
if [ "$texto_ingresado" = "camarones2425abrir" ]; then
    echo "El codigo ingresado es correcto."
    # Si el texto es correcto, dirigir al usuario a otro archivo bash
    clear && bash datag/win.sh
else
    echo "El codigo ingresado es incorrecto. Inténtalo de nuevo."
fi