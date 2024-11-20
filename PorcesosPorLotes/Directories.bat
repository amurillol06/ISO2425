@echo off
rem Script de createFiles
rem Autor:Adrian Murillo Ledesma
rem fecha: 20-11-2024

echo MENU PRINCIPAL

echo (1) crear fichero con el nombre pedido al usuario
echo (2) mostrar el arbol de directorios de la carpeta usuario
echo (3) mostrar archivos con extension txt
echo (4) crear los directorios alfredoff,marinapg y ramonam en tu directorio actual
echo (5) copia el contenido de tu carpeta de usuario al Escritorio

set /P opcion=elige una opcion:

if %opcion%==1 goto crear_fichero
if %opcion%==2 goto crear_fichero
if %opcion%==3 goto crear_fichero
if %opcion%==4 goto crear_fichero
if %opcion%==5 goto crear_fichero

:crear_fichero
set /P nombre=Introduce el nombre del fichero:
echo > %fichero%.txt
pause
exit

:mostrar_arbol
treec:\Users
pause
exit

:extension.txt
dir *.txt
pause
exit

:directorios
mkdir alfredoff
mkdir marinapg
mkdir ramonam
pause
exit

:copiar
xcopy /E %USERPROFILE% C:\Copia
pause
exit
