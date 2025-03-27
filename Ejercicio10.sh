#!/bin/bash

echo "Ingrese la longitud del primer lado:"
read lado1
echo "Ingrese la longitud del segundo lado:"
read lado2
echo "Ingrese la longitud del tercer lado:"
read lado3

if [ $lado1 -eq $lado2 ] && [ $lado2 -eq $lado3 ]; then
    echo "Es un triángulo equilátero."

elif [ $lado1 -eq $lado2 ] || [ $lado1 -eq $lado3 ] || [ $lado2 -eq $lado3 ]; then
    echo "Es un triángulo isósceles."

else
    echo "Es un triángulo escaleno."
fi