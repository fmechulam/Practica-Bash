#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <padron> <directorio_salida>"
    exit 1
fi

PADRON=$1
DIRECTORIO=$2

# Calcular el tipo de Pokémon a filtrar
TIPO=$(( (PADRON % 18) + 1 ))

# Calcular la estadística mínima requerida
ESTADISTICA_MINIMA=$(( (PADRON % 100) + 350 ))

# Crear el directorio si no existe
mkdir -p "$DIRECTORIO"

# Buscar el archivo CSV en subdirectorios
CSV_FILE=$(find . -type f -name "*.csv" | head -n 1)

if [ -z "$CSV_FILE" ]; then
    echo "No se encontró un archivo CSV."
    exit 1
fi

# Filtrar los Pokémon que cumplen con los requisitos y guardar el resultado
grep -i ",$TIPO,\|,$TIPO$" "$CSV_FILE" | awk -F',' -v min_stat="$ESTADISTICA_MINIMA" '{
    total = $3 + $4 + $5 + $6 + $7 + $8;
    if (total >= min_stat) print $1;
}' > "$DIRECTORIO/resultado.txt"

#si fueran varios archivos csv, seria algo asi:
# Procesar cada archivo CSV encontrado
#for CSV_FILE in $CSV_FILES; do
#    # Filtrar los Pokémon que cumplen con los requisitos y agregar el resultado al archivo
#    grep -i ",$TIPO,\|,$TIPO$" "$CSV_FILE" | awk -F',' -v min_stat="$ESTADISTICA_MINIMA" '{
#        total = $3 + $4 + $5 + $6 + $7 + $8;
#        if (total >= min_stat) print $1;
#    }' >> "$DIRECTORIO/resultado.txt"
#done

echo "Resultado guardado en $DIRECTORIO/resultado.txt"






