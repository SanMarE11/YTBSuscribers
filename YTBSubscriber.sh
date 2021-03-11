#!/bin/bash
trap ctrl_c INT

function ctrl_c(){
	echo -e "\nEsta finalizando el programa..."
}
if [ $1 ]; then
	declare -r id=$1
	echo "Este Canal Tiene: "
	curl -s "https://www.youtube.com/channel/$id" | tr '"' '\n' | grep "suscriptores" || grep "subscribers"
else
	echo -e "El uso del programa es: ./YTB.sh {IDCanal}"
fi
