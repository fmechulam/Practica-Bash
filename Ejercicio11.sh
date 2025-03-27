#!/bin/bash

suma() {
    echo "Resultado de la suma: $(( $1 + $2 ))"
}

resta() {
    echo "Resultado de la resta: $(( $1 - $2 ))"
}

multiplicacion() {
    echo "Resultado de la multiplicación: $(( $1 * $2 ))"
}

division() {
    if [ "$2" -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
    else
        echo "Resultado de la división: $(( $1 / $2 ))"
    fi
}

echo "Ingrese el primer número:"
read num1
echo "Ingrese el segundo número:"
read num2

suma "$num1" "$num2"
resta "$num1" "$num2"
multiplicacion "$num1" "$num2"
division "$num1" "$num2"