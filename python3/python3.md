Python

*Per avviare l'interprete *

*$ env python3*

*per uscire *

*\>\>\> exit()*

***Tipi**:*

*long x=2l*

*int: x=1*

*float x=1.0 \#questo è un commento*

*bool x=True*

*complex x=1+2j*

*str x=”ciao”+' '+'casa\t'*

*NoneType x=None \#puntatore nullo*

*unicode x=**u'**ciao casa\t' \#questa è una stringa unicode*

*unicode con codici x=**ur'**ciao \u0020 casa\t'*

*type(object) restituisce il tipo di un oggetto;*

*La parola chiave “del” permette di eliminare una variabile: del v*

***Gli operatori** di confronto sono quelli del C: \<, \>, ==, \<=, \>=
e !=. Quelli booleani sono and, or e not. Zero è False.*

***Le stringhe** sono immutabili. Il primo carattere ha indice zero. Per
stampare le stringhe (le tre virgolette doppie delimitano una stringa
multi-linea):*

*stringa = """Benvenuti.*

*Premi 1 per le opzioni *

*Permi 0 per uscire"""*

*print stringa\[0\]*

*Recupero una sottostringa, tramite “slice”*

*stringa\[-2\] \# Il penultimo carattere (si conta partendo da dx)*

*stringa\[0:2\] \# I primi due caratteri (stringa\[0\] e stringa\[1\])*

*stringa\[:-2\] \# Da 0 esclusi gli ultimi 2 caratt. (si conta da dx)*

*len() recupera la lunghezza*

*unicode('\xc3\xa4\xc3\xb6\xc3\xbc', 'utf-8') \# decodifica in*

* \# unicode la stringa codificata in 'utf-8'*

***Le liste** si comportano identicamente alle Stringhe, con l'unica
differenza che le Liste sono modificabili*

*x = \['C', 'iao', 2,'o'\] *

*x\[2\]=1.0*

*x\[0:2\] = \[1,2\] \#Alla fine ottengo \[1, 2, 1.0,'o'\] *

*x\[0:2\] = \[\] \#cancella i primi 2 elementi, ottengo \[1, 2,
1.0,'o'\] *

*p = \[1, x, 4\] \#Ottengo una lista annidata*

*print p\[1\]\[1\] \#Accedo ad un elem della lista interna *

* \#usando un doppio indice*

***I dizionari** sono invece delle tabelle hash*

*tel = { 'mio': 34700000, 'suo': 33811111 }*

*tel.has_key('mio')*

*printf tel\['mio'\]*

*del(tel\['mio'\]) *

*Le conizioni deve essere terminata da un "due punti"*

*if a == 1:*

* print 'uno'*

*elif a == 2:*

* print 'due'*

*else:*

* print 'altro'*

*\# somma di numeri dispari*

*s = 0*

*i = 0*

*while 1:*

* i = i + 1*

* if i \> 10:*

* break*

* if i %2 == 0:*

* continue*

* s = s + i*

* print s*

*for i in range(1O):*

* print i+1*

*Una particolarità è la clausola else applicata ai cicli. Si tratta di
una condizione che viene eseguita solamente se il ciclo non termina con
break. *

***Definizione di funzioni***

*def fact(n):*

* """Fattoriale di un numero"""*

* if fact == 1:*

* **return** 1*

* else*

* **return** n \* fact(n-1)*

*possiamo richiamarla in uno dei modi: *

*fact(5)*

*fact(n=5) \# Argomenti a parola chiave *

*In generale, una lista di argomenti deve avere un numero qualunque di
argomenti posizionali seguiti da zero o più argomenti a parola chiave,
ove le parole chiave devono essere scelte tra i nomi dei parametri
formali.*

*L'*esecuzione* di una funzione introduce una nuova tabella di simboli,
usata per le variabili locali della funzione. Più precisamente, tutti
gli assegnamenti di variabili in una funzione memorizzano il valore
nella tabella dei simboli locale, laddove i riferimenti a variabili
cercano prima nella tabella dei simboli locale, poi nella tabella dei
simboli globale, e quindi nella tabella dei nomi built-in. Di
conseguenza ad una variabile globale non può essere assegnato
direttamente un valore all'interno di una funzione (a meno che non
compaia in un'istruzione global), malgrado ci si possa riferire alla
variabile. *

I parametri attuali (argomenti) di una chiamata a funzione vengono
introdotti nella tabella dei simboli locale della funzione al momento
della chiamata; perciò gli argomenti sono passati usando una *chiamata
per valore* (dove il *valore* è sempre un *riferimento* ad un oggetto,
non il valore dell'oggetto). Quando una funzione chiama un'altra
funzione, viene creata una nuova tabella locale dei simboli per tale
chiamata.

Possiamo definire argomenti con valori predefiniti, quindi possiamo
chiamarla con un numero di argomenti minore rispetto alla definizione,
ad es:

def ask_ok(domanda, n=4, err_msg='Sì o no, grazie!'):

“””Fa la domanda n volte, e con messaggio d'errore msg_err”””

.. ..

possiamo richiamarla cosi:

*ask_ok('Vuoi davvero uscire?')*

*ask_ok('Devo sovrascrivere il file?', 2)*

*I valori predefiniti sono valutati UNA SOLA VOLTA al momento della
definizione della funzione nella *definizione* dello spazio dei nomi.
Ciò può creare problemi quando gli oggetti sono mutabili, ad es.*

*def f(a, L=\[\]):*

L.append(a)

return L

print f(1)

print f(2)

print f(3)

stamperà:

\[1\]

\[1, 2\]

\[1, 2, 3\]

*perchè il valore predefinito L è stato valutato UNA SOLA VOLTA
all'inizio della chiamata f(1). In quel momento è stata creata come
lista con 0 elementi, poi gli è stato aggiunto l'elemento '1'. Quindi le
chiamate successive f(2) ed f(3) aggiungono gli elementi '2' e '3' a
questa lista.*

*Infine possiamo specificare che una funzione può essere chiamata con un
numero arbitrario di argomenti. Tali argomenti verranno incapsulati in
una tupla, ovvero una lista non modificabile:*

*def fprintf(file, format, \*args):*

*E' possibile definire moduli da importare creando un file con il
suffisso .py aggiunto. L'importazione avviene attraverso *

*import nomeModulo*

*C'è una variante dell'istruzione import che importa nomi da un modulo
direttamente nella tabella dei simboli del modulo che li importa. Per
esempio: *

import modulo \#importa solo package o moduli

from modulo import funzione1, f2 \#importa anche classi e funzioni

from modulo import \*

*Ogni modulo ha la sua tabella dei simboli privata, che è usata come
tabella dei simboli globale da tutte le funzioni definite nel modulo.
Quindi l'autore di un modulo può utilizzare le variabili globali nel
modulo senza preoccuparsi di conflitti accidentali con le variabili
globali di un utente. D'altro canto, se si sa quel che si sta facendo,
si può accedere alle variabili globali di un modulo mediante la stessa
notazione usata per riferirsi alle sue funzioni,
nome_modulo.nome_elemento. *

*Quando un modulo di nome spam viene importato, l'interprete cerca un
file chiamato spam.py nella directory corrente, e quindi nella lista di
directory specificata dalla variabile d'ambiente
*<span id="anchor"></span>*PYTHONPATH. *

***File***

*open() restituisce un oggetto file, ed è usata con due argomenti:*

*open(nomefile, modo) \#modo = 'r', 'w', 'a', 'r+' (r+=rw).*

*L'argomento modo è facoltativo; in caso di omissione verrà assunto
essere 'r'. Su Windows e Macintosh, 'b' aggiunto al modo apre il file in
modo binario, per cui ci sono ulteriori modi come 'rb', 'wb' e 'r+b'.
Windows distingue tra file di testo e binari; i caratteri EOF dei file
di testo vengono leggermente alterati in automatico quando i dati
vengono letti o scritti. Questa modifica che avviene di nascosto ai dati
dei file è adatta ai file di testo ASCII, ma corromperà i dati binari
presenti ad esempio in file JPEG o .EXE. Si raccomanda cautela nell'uso
del modo binario quando si sta leggendo o scrivendo su questi tipi di
file. Si noti che l'esatta semantica del modo testo su Macintosh dipende
dalla libreria C usata. *

*Per leggere i contenuti di un file, s'invochi f.read(lunghezza), che
legge una certa quantità di dati e li restituisce come stringa. Se è
stata raggiunta la fine del file, f.read() restituirà una stringa vuota
(""). lunghezza è un argomento numerico facoltativo, se omesso o
negativo, verrà letto e restituito l'intero contenuto del file. Se il
file è troppo grosso rispetto alla memoria della macchina il problema è
tutto vostro.*

*f.readline() legge una singola riga dal file; un carattere di fine riga
(\n) viene lasciato alla fine della stringa, e viene omesso solo
nell'ultima riga del file nel caso non finisca con un fine riga. Ciò
rende il valore restituito non ambiguo: se f.readline() restituisce una
stringa vuota, è stata raggiunta la fine del file, mentre una riga vuota
è rappresentata da '\n', stringa che contiene solo un singolo carattere
di fine riga. *

*f.write(stringa) scrive il contenuto di stringa nel file, restituendo
None. *

*\>\>\> f.write('Questo è un test\n')*

*f.tell() restituisce un intero che fornisce la posizione nel file
dell'oggetto file, misurata in byte dall'inizio del file. Per variare la
posizione dell'oggetto file si usi "f.seek(offset, da_cosa)". La
posizione viene calcolata aggiungendo ad offset un punto di riferimento,
selezionato tramite l'argomento da_cosa. Un valore di da_cosa pari a 0
effettua la misura dall'inizio del file, 1 utilizza come punto di
riferimento la posizione attuale, 2 usa la fine del file. da_cosa può
essere omesso ed il suo valore predefinito è pari a 0, viene quindi
usato come punto di riferimento l'inizio del file. *

*Quando si è terminato di lavorare su un file, si chiami f.close() per
chiuderlo e liberare tutte le risorse di sistema occupate dal file
aperto. Dopo aver invocato f.close(), i tentativi di usare l'oggetto
file falliranno automaticamente. *

*quando si desidera salvare tipi di dati più complessi, quali liste,
dizionari o istanze di classe, le cose si fanno assai più complicate. *

*Per non costringere gli utenti a scrivere e correggere in continuazione
codice per salvare tipi di dati complessi, Python fornisce un modulo
standard chiamato
*[*pickle*](http://docs.python.it/html/lib/module-pickle.html)*. Si
tratta di un modulo meraviglioso che può prendere pressoché qualsiasi
oggetto Python (persino alcune forme di codice Python!) e convertirlo in
una rappresentazione sotto forma di stringa; tale processo è chiamato
*pickling* (NdT: letteralmente "conservazione sotto aceto", in pratica
si tratta di serializzazione, attenzione a non confonderla con quella
del modulo marshal). La ricostruzione dell'oggetto a partire dalla
rappresentazione sotto forma di stringa è chiamata *unpickling*. Tra la
serializzazione e la deserializzazione, la stringa che rappresenta
l'oggetto può essere immagazzinata in un file, o come dato, o inviata a
una macchina remota tramite una connessione di rete. *

*Se si ha un oggetto x, e un oggetto file f aperto in scrittura, il modo
più semplice di fare la serializzazione dell'oggetto occupa solo una
riga di codice: *

*pickle.dump(x, f)*

*Per fare la deserializzazione dell'oggetto, se f è un oggetto file
aperto in scrittura: *

*x = pickle.load(f)*
