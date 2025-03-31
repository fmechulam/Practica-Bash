#!/bin/bash

echo "Ingrese su nombre:"
read nombre

if [ "$nombre" == "Manu" ]; then
    echo "Hola, profe"
else
    echo "Hola, $nombre"
fi