@echo off
rem Script de Name
rem Autor:Adrian Murillo
rem Fecha: 18-11-2024

set /P num1="Introduce un numero"

set /P num2="Introduce otro numero"

set /A Suma= num1 + num2

echo El resultado de %num1% mas %num2% es igual a %Suma%

set /A Resta= num1 - num2

echo El resultado de %num1% ,menos %num2% es igual a %Resta%

set /A Multiplicacion= num1 * num2

echo El resultado de %num1% por %num2% es igual a %Multiplicacion%

set /A Division= num1 / num2

echo El resultado de %num1% entre %num2% es igual a %Division%
