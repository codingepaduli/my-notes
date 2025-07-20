# Firefox Notes

Plug-in Firefox:

- Bitwarden: Salva tutti i login (user e password) in remoto, per utilizzarli;
- Disconnect: Blocca trackers e tokens insicuri;
- DuckDuckGo Privacy Essentials: blocca i tracker, usa HTTPS, ricerche non memorizzate;
- Easy Image Blocker: blocca la lettura di immagini di un sito;
- Firefox Lightbeam: permette di visualizzare i tracker che stanno tracciando la navigazione;
- Https Everywhere: Utilizzare HTTPS per i siti in lista;
- Privacy Badger: Blocca banner, ads e tracker.
- uBlock Origin: Blocca i banner della pubblicità sui siti (anche mobile);
- Zoom page WE: Imposta il livello di zoom all'avvio.
- ClearUrl: remove tracking elements from URLs
- Canvas Fingerprint Defender: Invia falsi fingerprint ai siti che provano ad identificarti;
- Ad-block: Blocca i banner della pubblicità sui siti (non funziona su mobile);
- User agent switcher: Cambia il device che effettua la richiesta (Iphone, Ipad, Android, ecc..);
- Video DownloadHelper: Scarica video;
- Web Developer: Permette di validare HTML e CSS, di visualizzare la pagina per media, cosi come visualizzata su stampante o video..

## Opzioni per la privacy

Modificare l'user agent e prevenire i controlli di versione di Firefox:

```plaintext
general.useragent.override Mozilla/5.0 (X11; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0
```

Impedisce di rivelare l'ip attraverso WebRTC:

```plaintext
media.peerconnection.enabled false
```

Impedisce geo-localizzazione e audio:

```plaintext
geo.enabled false
media.webspeech.recognition.enable false
media.webspeech.synth.enabled false
```

Impedisce il fingerprint:

```plaintext
privacy.resistFingerprinting true
```

Sicurezza connessione:

```plaintext
security.ssl.require_safe_negotiation true
security.ssl.treat_unsafe_negotiation_as_broken true
```

Disabilita crittografia insicura 3DES, TLS1 e TLS2:

```plaintext
security.ssl3.rsa_des_ede3_sha false
security.tls.version.min 3
```

Gestione cache e disco (anche offline):

```plaintext
browser.cache.disk.enable false
browser.cache.disk_cache_ssl false
browser.cache.offline.enable false
```

Permette il copia e incolla nelle pagine web:

```plaintext
dom.event.clipboardevents.enabled true
```

Dimentica tab e schede chiuse dopo millisecondi:

```plaintext
browser.sessionstore.cleanup.forget_closed_after 3600000
```

Salva la sessione ogni millisecondi (NON scrivere ogni 15000 ms cioè ogni 15 secondi):

```plaintext
browser.sessionstore.interval 600000
```

Salvataggio automatico dei bookmarks in ``~/.mozilla/firefox/user.default/bookmarks.html``:

```plaintext
browser.bookmarks.autoExportHTML:true
browser.bookmarks.max_backups:15
```

Opzioni per la rimozione delle icone nei bookmarks:

```plaintext
browser.chrome.image_icons.max_size:0
browser.chrome.site_icons:false
```

Per gestire il numero di righe di siti suggeriti:

```
browser.newtabpage.activity-stream.topSitesRows:4
```

