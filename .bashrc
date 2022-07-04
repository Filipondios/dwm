#!bin/bash
#Loads the console profile

term="$(cat /proc/$PPID/comm)"
if [[ $term = "st" ]]; then
	    transset-df 0.8 --id "$WINDOWID" >/dev/null
fi

fish
