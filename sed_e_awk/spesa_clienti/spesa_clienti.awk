BEGIN {
 printf("\n\tCalcolo spesa per singolo cliente.\n");
 totale=0;
}

{
 spesa_cliente=$2*$3;
 printf("\t\tSpesa del cliente %s: %d. \n", $1, spesa_cliente);
 totale = totale + spesa_cliente;
}

END {
 printf("\tSpesa totale: %d.\n\n", totale);
}
