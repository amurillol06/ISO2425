#/bin/bash
#calculadora
#Adrian Murillo Ledesma
#04-02-2025

clear


	if [ "$#" -ne 2 ]; then
	echo "La calculadora se ha cerrado"
	exit
	fi

	if [ -f $1 ]; then
	echo "El fichero si existe"
	exit
	fi

contador=0

while [ "$contador" -lt "$2" ]; do
	contador=$((contador+1))

read -p "Operacion Op1 Op2 " op op1 op2


case $op in


	"s")

		echo  $op $op1 $op2 >> $1
	;;


	"r")
		echo $op $op1 $op2 >> $1
	;;

	"m")

		echo $op $op1 $op2 >> $1
	;;


	"d")
		echo $op $op1 $op2 >> $1
	;;


	"x")
	break
	echo "La operacion esta cerrada"
	;;
esac
done
