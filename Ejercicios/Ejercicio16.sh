echo "Ingrese números naturales (presione Enter después de cada uno, y "fin" para terminar):"
numeros=()

while true; do
    read num
    if [ $num == "fin" ]; then
        break
    fi

    numeros+=($num)
done

echo "Números ingresados:"
for num in ${numeros[@]}; do
    echo "$num"
done


#for ((i = 0; i < ${#numeros[@]}; i++)); do
#    echo "${numeros[i]}"
#done