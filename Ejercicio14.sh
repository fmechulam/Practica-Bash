#!/bin/bash

while true; do

    echo "Ingrese un número par:"
    read num
    if ((num % 2 == 0)); then
        echo "Número par ingresado correctamente."
        break
    else
        echo "El número ingresado no es par. Intente nuevamente."
    fi
    
done