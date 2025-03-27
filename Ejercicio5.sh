echo "vamos a calcular el perimetro de un rectangulo, ingrese las longitudes de sus 2 lados en una misma linea"
perimetro=$(calcularPerimetroRectangulo $1 $2)
echo "el perimetro es de $perimetro"

calcularPerimetroRectangulo () {
    perimetro=((($1 + $2)*2)
    echo $perimetro
}