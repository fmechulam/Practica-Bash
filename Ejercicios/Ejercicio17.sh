#!/bin/bash

documentos=()

echo "Ingrese números de DNI. Escriba 'fin' para terminar."

while true; do
    read dni
    if [ "$dni" = "fin" ]; then
        break
    fi
    documentos+=($dni)
done

echo "DNI ordenados en orden creciente:"
printf "%s\n" "${documentos[@]}" | sort -n