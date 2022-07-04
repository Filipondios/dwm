#!bin/bash

#Gets the name of the terminal
term="$(cat /proc/$PPID/comm)"
# Sets the transparency to 0.8. ( 0=transparent, 1=opaque)
if [[ $term = "st" ]]; then
	    transset-df 0.8 --id "$WINDOWID" >/dev/null
fi

fish
