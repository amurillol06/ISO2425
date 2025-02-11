#/bin/bash
#Adrian Murillo Ledesma
#fiveormore
#10-02-2025

clear

if [ $# -ne 2 ]; then
	echo "El numero de parametros no son dos"
exit

fi


if [ -f $1 ]; then
	echo "El fichero existe"
exit

fi

arch=$(ls $2 | wc -l)

if [ $arch -eq 0 ]; then

echo "directorio $2 esta vacio"
	exit
fi

if [ ! -s $2 ]; then

exit

fi

echo "Autor:Adrian Murillo Ledesma "
numero=0

for i in $2/*.txt; do
	lineas=$(cat $i | wc -l)

	if [ $lineas -ge 5 ]; then


	echo $i
	echo $i >> $1
	palabras=$(cat $i | wc -w)
	echo "El fichero original tiene $palabras palabras" > $i.q
	echo $i >> $i.q



	fi

done


num=$(cat $1 | wc -l)
echo "Se han identificado $num fichero" >> $1




