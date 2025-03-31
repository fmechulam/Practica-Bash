#!/bin/bash

# Buscar el archivo CSV en subdirectorios
CSV_FILE=$(find . -type f -name "*.csv" | head -n 1)

if [ -z "$CSV_FILE" ]; then
    echo "No se encontró un archivo CSV."
    exit 1
fi

while read POKEMON; do
    INFO=$(grep -i "^$POKEMON," "$CSV_FILE")
    if [ -z "$INFO" ]; then
        echo "Pokemon $POKEMON no encontrado."
        continue
    fi
    
    NOMBRE=$(echo "$INFO" | cut -d',' -f1)
    ALTURA=$(echo "$INFO" | cut -d',' -f9)
    PESO=$(echo "$INFO" | cut -d',' -f10)
    HABILIDADES=$(echo "$INFO" | cut -d',' -f11 | tr '|' '\n * ')
    
    echo "---------------------"
    echo "Pokemon: $NOMBRE"
    echo "Altura: $ALTURA centimetros"
    echo "Peso: $PESO kilos"
    echo ""
    echo "Habilidades:"
    echo " * $HABILIDADES"
    echo "---------------------"
done
