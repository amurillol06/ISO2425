#/bin/bash
#03/02/2025
#Adrian Murillo Ledesma
#Ejercicio Agenda

clear

AGENDA="agenda.txt"

while true; do

	echo ""
	echo "a) Añadir contacto"
	echo "b) Buscar por DNI"
	echo "c) Ver todos los contactos"
	echo "d) Eliminar todos los contactos"
	echo "e) Salir"
	read -p "Elige una opcion: " opcion


	case $opcion in

	a)
		read -p "Introduce el DNI: " dni
		if grep "^$dni:" agenda.txt > /dev/null; then
			echo "El usuario ya existe."
		else

		read -p "Nombre: " nombre
		read -p "Dime tus apellidos" apellidos
		read -p "Dime tu localidad" localidad
		echo "$dni:$nombre $apellido:$localidad" >> agenda.txt
		echo "Contacto añadido."
		fi
		;;

	b)
		read -p "Dime el DNI: " dni
		if grep "^$dni:" agenda.txt > /dev/null; then
			nombre=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
			apellido=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
			localidad=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)

		echo "La persona con DNI numero $dni es : $nombre $apellido , y vive en $localidad"
		else
			echo "No se encontro el contacto"
		fi
		;;


	c)
		if [ -s agenda.txt ]; then
		cat agenda.txt
		else
		echo "La agenda esta vacia"
		fi
		;;

	d)

		> agenda.txt
		echo "Todos los contactos han sido eliminados"
		;;


	e)
		echo "Saliendo del programa"
		break
		;;

	*)
		echo "Opcion no valida,intentalo de nuevo"
		;;

esac
done

