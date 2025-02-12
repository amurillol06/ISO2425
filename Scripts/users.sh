#!/bin/bash
#Adrian Murillo Ledesma
#users
#12-02-2025

clear

UID_MIN=${1:-1000}

FECHA=$(date "+%d-%m-%Y - %H:%M")

echo "=============================================="
echo "Informe de usuarios el dia $FECHA"
echo ""

contador=0

IFS=:
while read -r us c uid gid d h shell; do
	if [ "$uid" -ge "$UID_MIN" ]; then
		echo "$ud - $uid"
		((contador++))
	fi
done < /etc/passwd

echo ""
echo "Total: $contador usuarios"
echo "=============================================="

echo "$FECHA - El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos


