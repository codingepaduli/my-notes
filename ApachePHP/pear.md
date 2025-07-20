# PEAR Notes

PEAR (PHP Extension and Application Repository) è un framework per distribuire componenti PHP riutilizzabili.

Per ottenere il proxy configurato:

```bash
pear config-get http_proxy
```

Per settare il proxy in configurazione:

```bash
pear config-set http_proxy http://10.10.11.12:8080/
```

Per aggiornare la lista di canali:

```bash
pear.bat update-channels
```

Per fare l'update dei pacchetti nei canali:

```bash
pear.bat upgrade-all
```

Per verificare l'accesso ad un canale PEAR

```bash
pear channel-discover pear.doctrine-project.org
```

Per verificare la lista di pacchetti di un canale:

```bash
pear remote-list -c doctrine
```

Per installare doctrine:

```bash
pear install --alldeps doctrine/Doctrine
pear install --onlyreqdeps doctrine/Doctrine
```

Per installare Phing (ANT versione PHP)

```bash
pear channel-discover pear.symfony-project.com
pear channel-discover pear.phing.info
pear install --alldeps phing/phing
```

Per installare phpUnit

```bash
pear channel-discover pear.phpunit.de
pear install --alldeps phpunit/phpcpd
```

Per installare PhpDepend, un analizzatore della qualità tipo checkstyle

```bash
pear channel-discover pear.pdepend.org
pear install --alldeps pdepend/PHP_Depend-beta
pear install --alldeps pdepend/PHP_Depend
```

Per installare PHP_CodeSniffer, a development tool to detect violations of a defined coding standard.

```bash
pear install --alldeps pear/PHP_CodeSniffer
```

Per installare PhpMD, a PHP tool equivalent of the Java tool PMD

```bash
pear install --alldeps phpmd/PHP_PMD
```

Per installare PHPCPD, a Copy/Paste Detector (CPD) for PHP code

```bash
pear install --alldeps phpunit/phpcpd
```
