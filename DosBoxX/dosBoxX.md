# DosBox-X

Per eseguire DosBox-X selezionando la cartella di lavoro:

```bash
flatpak run com.dosbox_x.DOSBox-X -defaultdir /home/io/DosBoxX
```

Per eseguire DosBox-X ed avviare il mapper della tastiera:

```bash
flatpak run com.dosbox_x.DOSBox-X -defaultdir /home/io/DosBox -startmapper
```

Avviato il programma, per configurare la tastiera e l'internazionalizzazione corretta, impostare il corretto country code, per l'Italia è 39, ed il corretto layout della tastiera, per l'italia è it142.

```plaintext
KEYB it142
country 39
```

Per montare la cartella dei giochi nel drive ``c:\``

```bash
z:> mount c /home/io/DosBoxX/Games
```

Per accedere al disco appena montato:

```bash
z:> c:
```

A partial list of DOSBox-X default special keys:

```plaintext
[F11/F12]+F Switch to full-screen mode and back.
[F11/F12]+C Start DOSBox-X’s graphical configuration tool.
[F11/F12]+M Start DOSBox-X’s mapper editor.
[F11/F12]+Esc Show/hide DOSBox-X’s drop-down menu bar.
[F11/F12]+Pause Pause emulation (press again to continue).
```

## File di configurazione dosbox-x.conf

Per scrivere il file di configurazione dosbox-x.conf nella cartella di lavoro:

```bash
z:> config -wcp
```

Per impostare nel file di configurazione dosbox-x.conf i comandi da eseguire automaticamente all'avvio di DosBox-X, bisogna inserirli sotto la voce ``[autoexec]``

```plaintext
[autoexec]
dir
c:
```

Per impostare nel file di configurazione dosbox-x.conf il comando per montare automaticamente la cartella dei giochi:

```plaintext
[autoexec]
mount c /home/io/DosBoxX/Games
c:
```

Per impostare nel file di configurazione dosbox-x.conf la configurazione di tastiera e internazionalizzazione, inserire nella voce "country" il corretto country code, per l'Italia è 39, ed inserire nella voce "keyboardlayout" il corretto layout della tastiera, per l'italia è it142.

```plaintext
country = 39
keyboardlayout = it142
```

## Mapping della tastiera mapper-dosbox-x.map

Il mapping della tastiera sia avvia premendo ``[F11/F12]+M`` o eseguendo il comando con l'opzione ``-startmapper`` (DOSBox-X -startmapper).

Se su un gioco le lettere O e P permettono di andare a sinistra ed a destra, e le si vuole cambiare con i tasti freccia destra e sinistra, allora si deve comprendere come DosBox gestisce l'evento.

Quando nel keymapper si clicca col mouse sul tasto O, si nota la scritta

```plaintext
Event key_o
Bind Key_O
```

significa che quando l'utente preme il tasto O, DosBox genera un Bind "key_O" e quindi invia al programma in esecuzione l'evento "key_o"

Per sostituire il tasto O (che serve ad andare a sinistra) con il tasto freccia sinistra, allora si deve:

- cliccare col mouse sul tasto O
- cancellare il bind Key_O
- aggiungere il bind arrow_left cliccando sulla tastiera la freccia sinistra
- salvare

in questo modo, quando l'utente preme il tasto freccia sinistra, DosBox genera un Bind "arrow_left" e quindi invia al programma in esecuzione l'evento "key_o"
