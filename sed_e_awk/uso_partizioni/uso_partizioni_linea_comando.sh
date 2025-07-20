#!/bin/bash
echo -e "\t Questo script è eseguito interamente su linea di comando."
df | awk 'BEGIN {printf "\tElenco partizioni\n"}
	  /\// {printf "\t\tLa partizione %s\te usata al %d%.\n", $1, $5}
	  END {printf "\tFine Elenco\n"}'
# Notare che l'espressione regolare deve essere inserita tra "/" e "/". 
# Per cercare le partizioni devo visualizzare le righe che contengono il 
# carattere "/", ma per forzare awk ad interpretare questo carattere come
# carattere letterale, allora devo inserire il "\" davanti.
# Il risultato ottenuto racchiudendo l'espressione regolare "\/" 
# tra gli slash, come si vede sopra è "/\//".
