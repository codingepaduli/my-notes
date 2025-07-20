# Termux Notes

Termux è un emulatore di terminale con gestore pacchetti.

Il disco di termux è "virtualmente" separato dalle cartelle presenti nel disco android. Per poter accedere alle cartelle visibili su android il comando da eseguire è il seguente:

```bash
termux-setup-storage
```

Le cartelle sono quindi visibili da termux attraverso il percorso:

```bash
/storage/shared
```

Pacchetti da installare:

```bash
pkg install git
pkg install openssh
```

Nota: le chiavi pubbliche/private create con ssh devono essere salvate in ``/data/data/com.termux/files/usr/etc/ssh/``
