#!/bin/bash

# Verificar que se pasó el padrón como argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <PADRON>"
    exit 1
fi

PADRON=$1
RESULT_DIR="resultado"

# Ejecutar parte_1.sh
echo "Ejecutando parte_1.sh..."
./parte_1.sh "$PADRON" "$RESULT_DIR"

# Verificar si el archivo resultado.txt fue creado
RESULT_FILE="$RESULT_DIR/resultado.txt"
if [ ! -f "$RESULT_FILE" ]; then
    echo "Error: No se generó $RESULT_FILE"
    exit 1
fi

# Ejecutar parte_2.sh con el resultado de parte_1.sh y guardar la salida en output.txt
echo "Ejecutando parte_2.sh..."
./parte_2.sh < "$RESULT_FILE" > output.txt

echo "Proceso completado. Verifica el archivo output.txt"