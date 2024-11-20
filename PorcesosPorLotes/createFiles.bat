@echo off
rem Script de createFiles
rem Autor:Adrian Murillo Ledesma
rem fecha: 20-11-2024

echo menu de creacion de archivos

echo (1) Crear un archivo.txt
echo (2) Crear un archivo.bat


set/P opcion=Elige una opcion:

if %opcion%=="1" goto crear_txt
if %opcion%=="2" goto crear_bat



:crear_txt
set /P Archivo="Dime un nombre que desee poner al archivo.txt: " 
echo Esto es un archivo de texto > archivo.txt
echo Archivo .txt creado exitosamente.
pause
exit

:crear.bat
set /P Archivo="Dime un nombre que desee poner al archivo.bad: " 
echo Esto es un archivo bad  > archivo.bad
echo Archivo .bad creado exitosamente.
pause

exit