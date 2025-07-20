# vim Notes

vi improved è un editor di testo preistorico, ma ancora in uso nelle distribuzioni Linux. Non ha i classici menù, ma due modalità d'uso:

- la modalità inserimento testo;
- la modalità comando (usata per tutte le azioni da eseguire sul file, come salvare il file, cercare e sostituire testi, ecc...).

Per aprire un file:

- ``vi filename``

Per passare da una modalità all'altra:

- ``i`` e ``a`` modalità di inserimento testo prima e dopo il cursore;
- ``ESC`` torna alla modalità comando.

Per salvare ed uscire (in modalità comando):

- ``:w`` salva il file;
- ``:wq`` salva il file ed esce dal programma;
- ``:q!`` esce dal programma e scarta le modifiche.

Per spostare il cursore:

- ``k`` sposta il cursore su;
- ``j`` sposta il cursore giu;
- ``h`` sposta il cursore a destra;
- ``l`` sposta il cursore a sinistra;
- ``0`` sposta il cursore a inizio riga;
- ``$`` sposta il cursore a fine riga;
- ``%`` sposta il cursore alla parentesi associata (quando si ha sia la parentesi di apertura che quella di chiusura);
- ``:n`` sposta il cursore alla riga ``n``.

Per effettuare una ricerca:

- ``/frase`` cerca in avanti la ``frase``;
- ``n`` prosegue nella ricerca della successiva occorrenza;
- ``N`` prosegue nella ricerca della precedente occorrenza.

Per copiare, incollare e annullare:

- ``dd`` Cancella una riga intera;
- ``yy`` Copia una riga intera;
- ``dw`` Cancella una parola;
- ``yw`` Copia una parola;
- ``p`` Incolla il testo copiato o cancellato prima del cursore;
- ``P`` Incolla il testo copiato o cancellato dopo il cursore;
- ``u`` annulla l'ultima modifica.

Per sostituire una occorrenza con un'altra:

- ``:s/search/replace/`` sostituisce solo la prima occorrenza con la seconda;
- ``:s/search/replace/g`` sostituisce tutte le occorrenze con la seconda parola;
- ``:%s/search/replace/g`` sostituisce tutte le occorrenze nel file con la seconda parola.
