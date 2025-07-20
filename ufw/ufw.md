# ufw Notes

Ufw (Uncomplicated firewall) gestisce il firewall in maniera semplificata. Gufw fa da GUI.

Per visualizzare lo stato:

- ``sudo ufw status verbose`` visualizza lo stato, il logging (attivo o meno) e le regole.
- ``sudo ufw status numbered`` visualizza le regole numerate

Per abilitare o disabilitare il firewall:

- ``sudo ufw enable`` Abilita il firewall
- ``sudo ufw disable`` Disabilita il firewall

Per aggiungere regole relative ai protocolli (in / out) con:

- ``sudo ufw allow ssh``
- ``sudo ufw allow in http``
- ``sudo ufw insert 3 allow out https``

Per cancellare le regole (per posizione)

- ``sudo ufw remove 2``

Per resettare le regole e ricominciare:

- ``sudo ufw reset``

Per visualizzare le regole definite dall'utente:

- ``ufw show user-rules``

Le regole di default (nega tutti in ingresso, accetta tutti in uscita) sono salvate nel file ``/etc/default/ufw``

Le regole di avvio e di logging sono salvate nel file ``/etc/ufw/ufw.conf``

Attenzione con Docker: docker manipola direttamente il firewall iptables, che è lo stesso firewall gestito da ufw. Per negare a docker la gestione del firewall, modificare nel file ``/etc/docker/daemon.json`` la seguente proprietà:

```plaintext
{ "iptables": false }
```
