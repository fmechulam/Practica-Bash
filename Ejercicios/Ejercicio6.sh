#!/bin/bash

echo "Ingrese un número:"
read num

if [ $num -gt 0 ]; then
    echo "El número es mayor que 0."
elif [ $num -lt 0 ]; then
    echo "El número es menor que 0."
else
    echo "El número es igual a 0."
fi

