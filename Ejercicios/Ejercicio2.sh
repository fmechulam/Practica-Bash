#!/bin/bash

sumar() {
    local suma=$(($1 + $2))
    echo $suma
}

echo "ingrese un numero"
read primero
echo "ingrese otro numero"
read segundo

resultado=$(sumar $primero $segundo)

echo "el resultado de hacer $primero + $segundo es $resultado"