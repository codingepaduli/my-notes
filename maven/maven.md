# Maven Notes

L'installazione di maven prevede solo l'estrazione in una directory e l'aggiunta della cartella ``MAVEN_HOME/bin`` al path.

Tutte le dipendenze scaricate vengono installate nella cartella ``$HOME/.m2``

``mvn -v`` visualizza sia la variabile ``MAVEN_HOME`` sia ``JAVA_HOME``

Il file di configurazione si trova in ``MAVEN_HOME/conf/settings.xml``, ma ogni utente puo personalizzarlo copiandolo in ``$HOME/.m2/settings.xml`` e modificandolo a piacimento.

Le impostazioni nel file ``$HOME/.m2/settings.xml`` hanno precedenza sulle impostazioni globali in ``MAVEN_HOME/conf/settings.xml``, comunque i 2 files vengono fusi in un unico file a runtime.

## Dipendenze

E' possibile ottenere l'albero delle dipendenze dei vari pacchetti con il comando:

```bash
mvn dependency:tree
```

Per sapere le dipendenze di un singolo pacchetto:

```bash
mvn dependency:tree -Dverbose -Dincludes=groupId:artifactId
```

ad esempio, nel caso in un file pom che dichiara la dipendenza verso commons-lang3

```plaintext
<dependency>
    <groupId>org.apache.commons</groupId>
    <artifactId>commons-lang3</artifactId>
    <version>3.4</version>
</dependency>
```

per cercare i pacchetti dipendenti da ``commons-lang3``:

```bash
mvn dependency:tree -Dverbose -Dincludes=org.apache.commons:commons-lang3
```
