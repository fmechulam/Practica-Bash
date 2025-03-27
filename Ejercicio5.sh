#!/bin/bash

calcularPerimetroRectangulo() {
    local perimetro=$(( ($1 + $2)*2 ))
    echo $perimetro
}


echo "vamos a calcular el perimetro de un rectangulo, ingrese las longitudes de sus 2 lados en una misma linea"
read primero segundo
perimetro=$(calcularPerimetroRectangulo $primero $segundo)
echo "el perimetro es de $perimetro"

