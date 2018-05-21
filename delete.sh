#!/bin/bash

function itWasRemoved() {
    if [ $? -eq 0 ]; then
	echo removed $1
    else
	echo not removed $1
    fi
}

# Las comillas dobles aseguran que se manejen correctamente los espacios
# múltiples, etc. en los nombres de los archivos.

# $@ refiere a todos los argumentos

for dir in "$@"
do				# ini-bucle ------------------------------


if [ -f "$dir" ]; then		# if it's file
    rm "$dir"
    itWasRemoved "$dir"
elif [ -d "$dir" ]; then	# if it's directory
    rm -r "$dir"
    itWasRemoved "$dir"
else
    echo there are no files "$dir"
fi

done				# fin-bucle ------------------------------
echo
exit 0
