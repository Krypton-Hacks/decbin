#!/bin/bash
#script informatico creado para conocer todos los numeros decimales en binario y hexadecimal
#colors
#Autor KevinVarsa
#Bash shell programmer
green="\e[1;32m"
red="\e[1;31m"
blue="\e[1;34m"
yellow="\e[1;33m"

function repeat() {
echo -e $green "________           _____________         "
echo -e $green "___  __ \_____________  __ )__(_)______  "
echo -e $green "__  / / /  _ \  ___/_  __  |_  /__  __ \ "
echo -e $green "_  /_/ //  __/ /__ _  /_/ /_  / _  / / / "
echo -e $green "/_____/ \___/\___/ /_____/ /_/  /_/ /_/  "
echo -e $green ""
echo -e $yellow"                 (by:KevinVarsa) " 
echo ""
echo "Ingrese una opcion"
echo ""
echo "1:Convertir decimal a binario"
echo "2:Convertir decimal a hexadecimal"
echo "3:Convertir binario a decimal"
echo "4:Convertir hexadecimal a decimal"
echo "5:Convertir binario a hexadecimal"
echo "6:Convertir hexadecimal a binario"
echo "7:Salir"
echo ""
read -p "Opcion: " opcion
echo ""
case $opcion in
[1-2-3-4-5-6-7])
if (( $opcion == 1 ))
then
read -p "Ingrese un numero: " numero
db=$(echo "ibase=10;obase=2;$numero" | bc)
echo -e $green "EL numero $numero en binario es $db"
elif (( $opcion == 2 ))
then
read -p "Numero: " numero
dh=$(echo "ibase=10;obase=16;$numero" | bc)
echo -e $green "El numero $numero en hexadecimal es $dh"
elif (( $opcion == 3 ))
then
read -p "Numero: " numero
bd=$(echo "ibase=2;$numero" | bc)
echo -e $green "EL $numero a decimal es $bd"
elif (( $opcion == 4 ))
then
read -p "Numero: " numero
hd=$(echo "ibase=16;$numero" | bc)
echo -e $green "El numero hexadecimal $numero a decimal es $hd"
elif (( $opcion == 5 ))
then
read -p "Numero: " numero
bh=$(echo "ibase=2;obase=16;$numero" | bc)
echo -e $green "EL numero binario $numero llevado a hexadecimal es $bh"
elif (( $opcion == 6 ));then
read -p "Numero: " numero
hb=$(echo "ibase=16;obase=2;$numero" | bc)
echo -e $green "El numero hexadecimal $numero llevado a binario es $hb"
elif (( $opcion == 7 ))
then
echo "Saliendo..."
sleep 1.5
exit
fi
;;
*)echo "Opcion invalida intente nuevamente..."
sleep 1.5
clear
repeat
;;
esac
}
repeat
echo ""
echo -e $yellow "Gracias por usar decbin"

