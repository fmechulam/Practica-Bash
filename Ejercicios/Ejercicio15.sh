#!/bin/bash

while true; do
    echo "Ingrese un número del 1 al 7 para representar un día de la semana:"
    read num

    case "$num" in
        1) echo "Lunes"; break ;;
        2) echo "Martes"; break ;;
        3) echo "Miércoles"; break ;;
        4) echo "Jueves"; break ;;
        5) echo "Viernes"; break ;;
        6) echo "Sábado"; break ;;
        7) echo "Domingo"; break ;;
        *) echo "Número fuera de rango. Intente nuevamente." ;;
    esac
done