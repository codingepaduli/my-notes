# Componenti Hardware

Per "hardware" (parti dure) di un personal computer intendiamo tutta i
dispositivi elettronici che compongono il nostro computer. Questi sono:

## 

**CPU Multi CORE** ("Central processing unit") detta comunemente
processore: elabora i dati.

Un core (cuore) è un'unità "indipendente" di elaborazione (i vecchi
processori avevano un solo core).

Il multi-core è nato dall’unione di due (quattro, otto, ...) core
indipendenti e delle rispettive cache.

I recenti processori hanno quindi più core, ed ognuno conterrà:

- > **registri:** speciali locazioni di memoria interne alla CPU, molto
  > veloci, sulle quali la ALU effettua le operazioni;
  > <img src="100_0001.jpg" style="width:2.07222in;height:1.74514in" />

- > **cache memory** cioè una piccolissima memoria sulla quale la CPU
  > scrive e legge i dati (è molto più veloce della RAM);

- > **ALU (Unità Aritmetico-Logica):** esegue le operazioni logiche e
  > aritmetiche;

L’aumento del numero dei core ci consentono di effettuare più operazioni
in parallelo aumentando la velocità di calcolo. Purtroppo, questo
approccio comporta anche alcuni svantaggi, in quanto i **programmi
devono essere ottimizzati** (scritti sfruttando la programmazione
parallela in modo da impegnare piu core), in caso contrario essi
impegneranno solo uno dei core, lasciando gli altri core inutilizzati.

Caratteristica importante è la frequenza, ovvero il numero massimo di
operazioni che può fare in un secondo (ad es. un pentium 350 Mhz può
effettuare al massimo 350.000.000 operazioni al secondo).

Infine importante è l’architettura: 8bit – 16bit – 32bit o 64bit che
indica il la massima dimensione della RAM ed altre caratteristiche. [1]

Ovviamente processori diversi avranno un numero ed una disposizione
diversa per i piedini (pin), quindi la piedinatura deve essere
compatibile con il socket (lo "zoccolo") della scheda madre. Siate
precisi nel montarlo, non fate piegare i piedini, e attenzione ad
agganciare bene la ventola di raffreddamento sopra questa unità.

## 

**R.A.M. e DDR-RAM**: E'"la memoria sulla quale sono memorizzati i dati
che devono essere elaborati. E’ composta da un insieme di celle, dette
locazioni, in ognuna delle quali è memorizzato un dato. La RAM può
inviare al processore un solo dato per volta, mentre la DDR-RAM (Double
Data Rate) ne invia due. Per questo componente è molto importante la
velocità di trasferimento dei dati, poichè che deve trasferire il
maggior numero di dati alla CPU per farli elaborare. **E’ il sistema
operativo che usa la RAM, l'utente non può salvare files su questa
memoria. Quando il computer si spegne, tutti i dati su questa memoria si
perdono.**

<img src="SSA40489.jpg" style="width:4.52639in;height:1.01667in" />

## 

**La scheda madre** (in inglese motherboard - mainboard) o scheda di
Sistema è una parte fondamentale di un moderno personal computer:
raccoglie in sé tutta la circuiteria elettronica per gestire il
funzionamento dei vari componenti e il collegamento tra questi. È
responsabile della trasmissione e sincronizzazione corretta di molte
centinaia di segnali (elettrici) diversi sensibili ai disturbi. Dei suoi
vari circuiti descriveremo:

1.  > **Il Front Side Bus:** è un canale che permette a tutti i
    > dispositivi di dialogare fra loro. Il dialogo è gestito dal DMA
    > Controller.

2.  > **DMA Controller:** smista e regola il traffico di informazioni
    > passante attraverso il Bus di sistema, fra CPU, RAM e le
    > periferiche di input/output (come Floppy disk, Hard disk, ecc...).

3.  > Il **bus mastering** è una funzionalità supportata da alcune
    > [architetture bus](http://it.wikipedia.org/wiki/Bus_(informatica))
    > che permette ad un
    > [controller](http://it.wikipedia.org/wiki/Controller) collegato al
    > bus di comunicare direttamente con altri dispositivi sul bus senza
    > passare attraverso il [processore
    > centrale](http://it.wikipedia.org/wiki/CPU). La maggior parte
    > delle moderne architetture bus supportano il bus mastering,
    > ottenendo in questo modo notevoli miglioramenti prestazionali.

## 

Esistono vari tipi di bus che permettono di collegare al computer le più
svariate periferiche, e sono:

- > **ISA** (Industry Standard Architecture) evolutasi poi in **EISA**
  > (Extended ISA) è la prima tipologia di bus per pc, oggi non è più
  > utilizzato.

- > **PCI** (Interconnessione componente periferica): Nato nel 1993 per
  > sostituire il bus ISA, oggi non è più utilizzato ed è sostituito dal
  > PCI Express.

- > **SCSI** (Small Computer System Interface): quest'estensione del bus
  > è nata nel 1982 per gestire comunicazioni veloci (per l'epoca), ma
  > era molto sofisticata (e quindi costosa) ed oggi non è più
  > utilizzata.

- > **ATA** evolutasi nel tempo in **ATAPI**: quest'estensione del bus è
  > nata originariamente per collegare al computer esclusivamente gli
  > hard disk e prende il nome dal primo computer che l'ha incorporata,
  > un IBM PC/AT, dal quale è nato il nome AT Attachment. Il successo ha
  > portato ad evolverlo in ATA Pachet Interface, per consentire anche
  > il collegamento di altri tipi di periferiche. Prevede 2 canali e
  > l'attacco di 2 periferiche (una master e una slave) per ogni canale.
  > E' conosciuto con molti nomi, tra cui IDE (integrated drive
  > electronics), EIDE (Enhanced IDE), Ultra ATA o PATA. Oggi è stato
  > sostituito dal SATA, e per evitare confusione con quest'ultimo,
  > l'ATA è stato ribattezato PATA, ovvero Parallel ATA. Oggi è ancora
  > diffuso nei vecchi PC, per cui troverete in seguito una lezione
  > specifica sul collegamento di queste periferiche.

- > **AGP** (Porta grafica accelerata): è una porta, non un tipo di bus,
  > ed è nata per collegare "rapidamente" ed in maniera privilegiata al
  > computer la scheda video. Oggi è stata sostituita dal PCI Express.

- > **USB** (Canale Seriale Universale): è nata per il collegamento di
  > un massimo di 127 periferiche esterne al pc ed è autoalimentata,
  > quindi le periferiche usb non necessitano di alimentazione.

- > **SATA (Serial ATA):** è nata come evoluzione dell'ATA/ATAPI,
  > aumenta la velocità del collegamento e permette di collegare e
  > scollegare le periferiche senza togliere l'alimentazione. Ogni
  > periferica ha un proprio canale, quindi si abolisce la distinzione
  > tra periferica master e slave.

- > **PCI Express:** <img src="250px-PCIExpress.jpg"
  > style="width:3.46528in;height:2.35417in" /> E' nato come evoluzione
  > del PCI, permette un collegamento più rapido tra le periferiche ed
  > il computer e consente di collegare e scollegare le periferiche
  > senza togliere l'alimentazione. E' composto da una serie di canali
  > tra loro indipendenti, che è possibile unire in modo da dedicare
  > prestazioni maggiori alle schede che utilizzano un numero maggiore
  > di canali. In figura possiamo vedere una porta PCI Express x4 (cioè
  > a 4 canali), una porta PCI Express x16 (a 16 canali) ed infine una
  > porta PCI Express x1 (a canale singolo).

## 

**Scheda video**: E’ la scheda che si occupa della visualizzazione di
immagini 2D/3D sul video. E’ composta principalmente da una **GPU**
(Graphics Processor Unit o Visual Processor Unit, un processore
specializzato per la grafica), **che ha una memoria RAM privata, usata
per memorizzare le scene da disegnare**. Nel 1999 fu "creata" una GPU
3D, nel senso che è capace di disegnare ambienti tridimensionali senza
aiuto della CPU. Nel 2002 NVIDIA GeForce FX introduceva lo Shared
Model", una tecnologia particolare e molto efficiente per la grafica 3D.
Dal 2004 Nvidia ha lavorato su SLI (Scan Line Interleave), e nel
frattempo ATI (di AMD) ha progettato Crossfire, comunque, entrambe le
tecnologie permettono a 2 schede video distinte di elaborare
simultaneamente una stessa scena grafica, creando quindi una sorta di
Multi-GPU.

## 

**Hard Disk**: è la memoria sulla quale si possono salvare, per tutto il
tempo che vogliamo NOI, le informazioni (sotto forma di FILE). E’
differente dalla RAM perché **noi sulla RAM non possiamo salvare nulla!!
Inoltre la ram non contiene file.** [2]

## 

**Memorie esterne: CD ROM – DVD ROM ±R – BLUE RAY DISK – HD-DVD – Schede
XD, Penne USB, ...** sono memorie esterne al PC e possono essere
rescrivibili (RW = ReWritable) o meno.

**Alimentatore:** il circuito elettrico che fornisce energia alle varie
periferiche. Sul lato esterno del computer deve essere collegato alla
presa di corrente. **se previsto, deve essere impostata l'alimentazione
corretta attraverso un'interruttore, altrimenti danneggerete i
componenti elettrici del computer.** Sul lato interno del computer,
l'alimentatore deve essere collegato alla scheda madre, alle ventole di
raffreddamento ed ovviamente ad ogni periferica che lo richieda.

# Assemblare un PC

## 

L’ alimentatore va collegato ALLA SCHEDA MADRE, alle ventole di
raffreddamento e ad ogni periferica ATA/ATAPI. o SATA. Inoltre può
essere collegato a qualsiasi altra periferica che richieda più energia,
ad esempio, come spesso accade, alle schede video ed agli hard disk
portatili.

La Ram va collegata semplicemente facendo una lieve pressione, ma
attenti alle alette che servono per bloccarla, altrimenti le rompete.

Le recenti schede madri prevedono periferiche SATA che non richiedono
particolari configurazioni, dato che ognuna ha il proprio collegamento
sul bus.

Le vecchie schede madri prevedono periferiche ATA/ATAPI, ed hanno
solitamente **DUE connettori**, uno primario e l’altro secondario (detti
spesso canali e impropriamente controller), ad ognuno dei quali è
possibile connettere un cavo dati. Mediante questo cavo dati possiamo
collegare alla scheda madre DUE periferiche con interfaccia ATA/ATAPI
(ad esempio hard disk, lettori e masterizzatori CD o DVD).

La scheda madre deve poter distinguere le due periferiche presenti sul
singolo cavo dati, quindi esse devono essere configurate una come master
e una come slave. Questa configurazione avviene spostando dei jumper
presenti sulle periferiche. Si può anche permettere alla scheda madre di
decidere chi è il master e chi lo slave, semplicemente configurando le
periferiche "cable select". Questo è particolarmente utile quando si
utilizzano dischi fissi vecchi, o nel caso di bassa compatibilità tra
unità diverse (ad esempio due dischi fissi, ma anche un disco fisso e un
lettore CD).

Quindi se io collego 4 periferiche ATA/ATAPI, queste saranno collegate
come:

- > **Primary Master,** cioè la periferica Master presente sul cavo dati
  > collegato al connettore primario della scheda madre.

- > **Primary Slave,**cioè la periferica Slave presente sul cavo dati
  > collegato al connettore primario della scheda madre.

- > **Secondary Master,** cioè la periferica Master presente sul cavo
  > dati collegato al connettore secondario della scheda madre.

- > **Secondary slave,** cioè la periferica Slave presente sul cavo dati
  > collegato al connettore secondario della scheda madre.

Totale: 2 cavi dati collegati sui canali master e slave. 2 periferiche
per ogni cavo dati.

Il cavo di rete va collegato al modem.

Le varie tecnologie si sono evolute nel tempo e, per ognuna di esse,
sono state create diverse versioni, potenzialmente incompatibili, perciò
ci si deve assicurare che i componenti del computer siano tra loro
compatibili e supportati dalla scheda madre.

Per fare un esempio delle DDR-RAM esiste la prima generazione con le
versioni standard DDR-200, DDR-266, DDR-333, DDR-400, poi esiste la
seconda generazione, le DDR2-RAM con le versioni standard DDR2-400,
DDR2-533, DDR2-666, DDR2-1000, ed infine la terza generazione, le DDR3
con le versioni DDR3-1066, DDR3-1333, DDR-1600. Le 3 generazioni di DDR
sono tra loro incompatibili, quindi non è possibile montare una DDR2 su
una scheda madre che implementa una DDR1.

Per fare un'altro esempio, dell'AGP esiste la versione AGP-1x, AGP-2x,
AGP-4x, AGP-8x ed AGP-Pro, quindi non si può montare una scheda video
AGP Pro su una scheda madre che implementa l'AGP 1x. Infine, ulteriore
esempio, su una scheda madre che prevede processori "intel", non si può
montare un processore AMD, ne è possibile montare un quad-core su una
scheda madre che non lo supporti.

Gli elementi principali che determinano la velocità del pc sono: la
velocità di elaborazione del processore, la velocita di trasmissione
della RAM, che deve essere veloce e capiente. Anche la velocità delle
periferiche ha un proprio peso, dato che queste bloccano la RAM per
copiarci i propri dati (cosa che si nota molto nell'elaborare file di
grandi dimensioni, come la copia o la codifica di un film). Infine, per
avere buone prestazioni per scene grafiche 3D (tridimensionali), ha
molta importanza la ram della scheda grafica, la velocità di
trasferimento dei dati della scheda grafica ed ovviamente gli standard
implementati dalla scheda grafica stessa (altrimenti molti giochi non
funzionano, o funzionano a scatti).

4.  Un pò di immagini ...

Qui vanno le altre periferiche PCI come modem e scheda audio.

<img src="SSA40488.jpg" style="width:3.74514in;height:2.90139in" />

Porta AGP per la scheda grafica.

Qui va collegato la CPU e più esternamente la ventola di raffreddamento!

Q va la RAM (attenti a non rompere le alette laterali per l’incastro)

Qui i canali (il cavetto grigio)

Questo è il connettore per l’alimentatore.

Chipset.

# Filesystem

## 

Quando un hard disk viene costruito, in fabbrica viene formattato
fisicamente, operazione che serve a creare i settori. Dato che è fisica,
è irreversibile.

Un settore è diviso in 3 parti.

<table>
<tbody>
<tr>
<td style="text-align: left;">Numero settore</td>
<td style="text-align: left;"><p>Dati contenuti:</p>
<p>512 kbyte</p>
<p>(cioè 4194304 bit).</p></td>
<td style="text-align: left;"><p>ECC: Error Corrective code</p>
<p>(codice per la correzione degli errori)</p></td>
</tr>
</tbody>
</table>

## 

L’Hard disk deve essere poi Partizionato, cioè si deve specificare se e
in quante parti dividerlo. Ad ogni parte viene dato un nome.

Il partizionamento crea anche il Filesystem che è una struttura logica
per la memorizzazione dei FILE. Ogni partizione contiene quindi un
Filesystem.

In seguito al partizionamento, l’Hard disk si deve formattare
Logicamente, cioè si deve azzerare ogni dato contenuto nella struttura
logica per la memorizzazione.

**Esempio**

Ho dei file chiamati "Laura Pausini", "Mario" e "Michele" rappresentato
in binario da **110101010101010**10101010, 1000010111111 e 00000000000.
Il file deve essere memorizzato nel filesystem contenuto nella
partizione Z:. E’ il sistema operativo (windows) che decide in quali
settori salvarlo e che scrive nel filesystem.

Supponiamo che il sistema operativo decida di salvare i file in questo
modo:

Struttura Filesystem di Z: settori che contengono il file

<table>
<tbody>
<tr>
<td style="text-align: left;">Laura Pausini</td>
<td style="text-align: left;">Settori 5 e 6</td>
</tr>
<tr>
<td style="text-align: left;">Mario</td>
<td style="text-align: left;">Settore 4</td>
</tr>
<tr>
<td style="text-align: left;">Michele</td>
<td style="text-align: left;">Settore 3</td>
</tr>
<tr>
<td style="text-align: left;"></td>
<td style="text-align: left;"></td>
</tr>
</tbody>
</table>

Settori dell’hard disk

<table>
<tbody>
<tr>
<td style="text-align: left;">Settore 3</td>
<td style="text-align: left;">00000000000</td>
<td style="text-align: left;">0 (cioè nessun errore)</td>
</tr>
<tr>
<td style="text-align: left;">Settore 4</td>
<td style="text-align: left;">1000010111111</td>
<td style="text-align: left;">1 (cioè errore)</td>
</tr>
<tr>
<td style="text-align: left;">Settore 5</td>
<td style="text-align: left;"><strong>110101010101010</strong></td>
<td style="text-align: left;">0 (cioè nessun errore)</td>
</tr>
<tr>
<td style="text-align: left;">Settore 6</td>
<td style="text-align: left;">10101010</td>
<td style="text-align: left;">0 (cioè nessun errore)</td>
</tr>
<tr>
<td style="text-align: left;">Settore 7</td>
<td style="text-align: left;">00000000000000</td>
<td style="text-align: left;">0</td>
</tr>
<tr>
<td style="text-align: left;">Settore 8</td>
<td style="text-align: left;">00000000000000</td>
<td style="text-align: left;">0</td>
</tr>
</tbody>
</table>

Come si vede nel settore 5 e 6 è presente il file "Laura Pausini",
ovviamente memorizzato in binario. Inoltre si vede che il settore 7 e 8
sono vuoti perché il Filesystem non ci dice niente.

E si vede che il settore 3 contiene il file "Michele", mentre il settore
4 contiene il file "Mario" ed è danneggiato (perché l’ECC non è zero).

Ovviamente ci sono tanti modi per salvare un file… quindi tanti
filesystem!!!

Questa tabella indica il Sistema operativo e il corrispondente
filesystem usato.

<table>
<tbody>
<tr>
<td style="text-align: left;"><strong>DOS</strong></td>
<td style="text-align: left;"><strong>Windows 95-98-Me</strong></td>
<td style="text-align: left;"><strong>Windows NT, 2000, XP, 7, 8,
10</strong></td>
<td style="text-align: left;"><strong>Linux</strong></td>
<td style="text-align: left;"><strong>Unix</strong></td>
</tr>
<tr>
<td style="text-align: left;">FAT 8bit – Fat 16bit</td>
<td style="text-align: left;">Fat 16bit – Fat 32bit</td>
<td style="text-align: left;">NTFS</td>
<td style="text-align: left;">Ext2 – Ext3 e Ext4</td>
<td style="text-align: left;">UFS</td>
</tr>
</tbody>
</table>

## 

I nomi delle partizioni dipendono strettamente dal sistema operativo. In
base a come gestisce gli hard disk, il sistema assegna il nome alle
partizioni.

### 

Windows cerca le partizioni del tipo FAT e NTFS sugli hard disk in
questa sequenza: [3]

**Primary Master**

**Primary Slave**

**Secondary Master**

**Secondary Slave**

ed assegna a queste per nome una lettera, partendo dalla "c:".

Poi assegna in nomi ai lettori CD-DVD ed infine alle memorie USB.

Quindi se sull'hard disk primary master ci sono 3 partizioni FAT16,
sull'hard disk primary slave ci sono 2 partizioni NTFS, sul secondary
master c'è un lettore CD e sul secondary slave c'è una partizione FAT32
ed una EXT3, allora windows cercherà prima gli hard disk ed assegnerà i
nomi: [4]

"c:" alla prima partizione FAT sul primary master.

"d:" alla seconda partizione FAT sul primary master.

"e:" alla terza partizione FAT sul primary master.

"f:" alla prima partizione NTFS sul primary slave.

"g:" alla seconda partizione NTFS sul primary slave.

"h:" alla partizione FAT32 sul secondary slave.

Poi cercherà i vari lettori CD-DVD ed assegnerà i nomi:

"i:" al lettore CD sul secondary master.

Infine cercherà memorie USB (penne, hard disk esterni, ecc..)

### 

Linux assegna ad ogni hard disk un nome:

"hda" all'hard disk Primary Master

"hdb" all'hard disk Primary Slave

"hdc" all'hard disk Secondary Master

"hdd" all'hard disk Secondary Slave

oppure hsa, hsb, ... se sono di tipo SATA.

Al nome aggiunge un numero per indicare la partizione su quello
specifico hard disk.

Ad esempio:

la prima partizione dell'hard disk hda è chiamata "hda1".

la terza partizione dell'hard disk hdb è chiamata "hdb3".

la quinta partizione dell'hard disk hsc (hard disk SATA) è chiamata
"hsc5".

Linux riesce a leggere tutte le partizioni, l'unica attenzione è che le
partizioni (compresi CD e floppy) devono essere montate, ovvero
associate ad una directory.

# Fasi di avvio

## 

Premendo il tasto di accensione del PC l’alimentatore distribuisce la
corrente alla scheda madre e alle varie periferiche.

Il primo programma che viene eseguito da un pc dopo l'accensione è il
Basic Input-Output System o BIOS. E’ memorizzato nella scheda madre e
contiene le informazioni meccaniche elettriche e logiche delle varie
componenti del computer.

Il Bios avvia il programmino contenuto nell’MBR: il **Boot Loader.** [5]

Il boot loader avvia il sistema operativo, può anche permetterci di
scegliere quale sistema operativo avviare.

# Sistema Operativo

## 

Un **sistema operativo (SO),** in inglese **OS (operating system)**) è
il programma responsabile del diretto controllo dell'hardware, si occupa
di gestire gli accessi degli utenti e di eseguire i processi. E’ il SO
che ORDINA al BIOS di eseguire alcune operazioni di Trasferimento Dati
(Lettura o Scrittura) dalle periferiche, e legge alcune informazioni
essenziali dal BIOS per il corretto funzionamento del computer. E'
composto da diversi strati (o livelli), ognuno con i propri scopi.

Il livello ZERO si occupa di avvicendare i processi (programmi) nell’uso
del processore.

Il primo processo (programma) sarà eseguito per 10-20 millisecondi, poi
il secondo per i successivi 10-20 millisecondi, poi il terzo… Questo
livello simula quindi una esecuzione contemporanea dei processi
(programmi). Oggi i processori sono multi-core, quindi più processi
saranno eseguiti su piu core.

Il livello UNO si occupa di gestire la memoria RAM. Ogni programma o
file viene copiato in memoria per l’elaborazione dei dati e ad
operazione conclusa sarà salvato su hard disk o cancellato dalla
memoria.

Il livello DUE si occupa di gestire tutte le periferiche. Senza questo
livello non è possibile usare periferiche come hard disk, modem, penne
USB, ecc..

Il livello TRE sono tutte le funzioni date da diversi programmi, ad
esempio il COPIA & INCOLLA, il Windows Media Player, ecc..

<img src="StratiSO.jpeg" style="width:5.31806in;height:3.91181in" />

# Esempio funzionamento del PC

## 

Supponiamo che l'utente voglia modificare il proprio curriculum
contenuto nella penna USB in un file di word. Accende quindi il
computer, che esegue il Bios e poi il boot loader, infine il sistema
operativo viene caricato in memoria Ram ed eseguito.

Acceso il computer, l'utente può usarlo a suo piacimento per gestire ed
elaborare i propri file (che, ricordo, memorizzano le informazioni).
Quindi l'utente collega la penna USB ad una porta USB.

A questo punto il sistema operativo, che gestisce tutto l'hardware, e
che ogni tanto lo controlla pure, si accorge che una un dispositivo è
stato collegato al bus USB, quindi "interroga" il dispositivo e capisce
che si tratta di una memoria. La memoria viene letta, vengono
individuate le partizioni presenti ed ad ognuna viene assegnato un nome.
Per ogni partizione, viene identificato il filesystem presente.

L'utente quindi può leggere i file memorizzati sulla penna USB ed
aprire, tra questi file, il file contenente il proprio curriculum. Il
sistema operativo cerca di capire che tipo di file deve aprire (spesso
basandosi sull'estensione del file), capito che si tratta di un file di
word, prima carica in memoria RAM il programma word, poi carica anche il
file in RAM, infine "dice" a word visualizzare il file, ormai in memoria
RAM.

L'utente a questo punto può modificare a proprio piacere il file, che è
quindi aggiornato direttamente in RAM, e può effettuare delle ricerche
su questo file, che vengono svolte dalla CPU, precisamente dall'ALU.

Modificato il file, l'utente lo salva e chiude word, quindi il file
aggiornato contenuto in RAM viene sovrascritto al vecchio file sulla
penna usb, Infine il sistema operativo cancella la RAM usata dal file e
dal programma, liberandola. L'utente quindi puo' scollegare la penna usb
dal computer con l'apposita funzione del sistema operativo.

Nota: Se l'utente, mentre scrive il curriculum con il programma word,
tira via la penna, tutte le modifiche effettuate sul curriculum saranno
perse, perché le modifiche si trovano in Ram e non sono salvate sulla
memoria (penna). Inoltre c'e' rischio che il filesystem risulti corrotto
e non sia piu' possibile visualizzare i files contenuti nella penna USB.

\*\* Questi "appunti" sono solo una semplificazione delle tecnologie
trattate. Le forti semplificazioni nascondono i complessi meccanismi e
le complesse componenti di un computer. **Alcuni errori sono voluti
proprio per semplificare lo studio.**

Servono esclusivamente per un’introduzione teorica che unita alle
lezioni pratiche fatte in laboratorio (lezioni su come smontare, montare
e configurare le periferiche di un pc) danno agli allievi una buona base
per iniziare a districarsi in questo "mondo elettronico".

[1] Per le architetture 32 bit è possibile montare un massimo di 4 GB di
RAM teorico, anche se in realtà il limite varia dai 2,5 GB ai 3,5 GB,
perché una parte di RAM è oscurata dalla scheda video. Per le
architetture 64 bit è possibile montare un massimo di 16 exabyte di RAM,
ovvero 16 miliardi di GB di RAM.

[2] Attenzione alla "grandezza" degli Hard Disk perchè

> se superano i 6 GB allora MS-DOS e Windows possono limitare la
> partizione a 7.8GB

> se la periferica supporta solo l'estensione LBA 28-bit e non LBA 48
> bit (precedente all'ATA6) allora Windows può limitare la partizione a
> 128 GB.

[3] Ovvio che se gli hard disk sono SATA verranno letti in ordine di
canale.

[4] Si noti che windows non legge le partizioni linux, anche se ci sono
programmi che lo permettono.

[5] MBR (Master boot record ) è il primo settore dell'hard disk
