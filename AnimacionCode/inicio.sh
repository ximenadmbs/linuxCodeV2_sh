#!/bin/bash


echo "Por favor, introduce el codigo de acceso correcto:"
read texto_ingresado

# Verificar si el texto ingresado es correcto
if [ "$texto_ingresado" = "14789" ]; then
    echo "El codigo de acceso ingresado es correcto." && sleep 2
    # Si el texto es correcto, dirigir al usuario a otro archivo bash
    clear && bash vichoPrces-v1.sh
else
    echo "El codigo ingresado es incorrecto. Inténtalo de nuevo."
fi
