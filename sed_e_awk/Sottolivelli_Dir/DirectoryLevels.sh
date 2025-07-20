#!/bin/bash

elenco=`find ./ -type d -ls `
elenco2=`echo "$elenco" | cut -d\. -f2 | sed "s/[^/]//g" `

numDir=`echo "$elenco" | wc --lines`

for i in `seq 1 $numDir`
do
	nomeFile=`echo "$elenco" | sed -n "$i"p\;"$i"q | cut -d\. -f2`		#sed stampa solo la riga i-esima
	numSlash=`echo $elenco2 | cut -d\  -f"$i"`				#Ricerca dell'ennesima riga di slash
	numLivelli=`echo $numSlash | wc --chars`
	echo -e "\"$nomeFile\"*\t*$(($numLivelli - 1))livelli." | sed 's/\\//g'
done

