#!/bin/bash

echo "Ingrese un número entero:"
read num

if (( num % 2 == 0 )); then
    echo "El número $num es par."
else
    echo "El número $num es impar."
fi