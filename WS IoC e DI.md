Web Service

Un WS e' un blocco di logica applicativa 
	* indipendente dal linguaggio e dalla piattaforma.
	* accessibile come Servizio su HTTP (bypassa i firewall, perche' http e' sempre aperto).
	* modulare (blocco a se stante).
	* utilizzabile in maniera sincrona e asincrona.

SOA: Service Oriented Architecture, architettura basata su Servizi.

ROA: Rest Service Oriented Architecture: architettura basata su Servizi REST che usano il protocollo HTTP.

SOAP: protocollo per architetture SOA.

# Inversion of Control

IOC (Inversion of Control) e’ un pattern architetturale che specifica
che il controllo del flusso di un programma viene invertito. Non deve
essere il programmatore a specificare il flusso (ovvero i passi da
eseguire), ma sara’ un componente esterno (framework, servizio, ecc...)
che prendera’ il controllo dell’esecuzione.

Il principio alla base e’ chiamato Hollywood principle, ovvero ’don’t
call us, we’ll call you’.

L’inversione del controllo e’ la chiave fondamentale che fa la
differenza tra libreria e framework: Una libreria e’ un insieme di
oggetti e metodi da utilizzare, un framework prende controllo del flusso
in maniera trasparente per il programmatore, specificando ad esempio
quando aprire e chiudere la sessione, quando aprire e chiudere una
transazione, ecc...

Un esempio di inversione del flusso avviene nella programmazione ad
aspetti. Gli aspetti sono delle entita’ esterne agli oggetti che
osservano il flusso del programma generato dalle interazioni tra
oggetti, modificandolo quando vengono innescate.

Quando si dichiara un aspetto legato ad un particolare metodo, e poi si
invoca il metodo, il framework prende il controllo del flusso ed esegue
sia il metodo invocato, sia il metodo indicato dall’osservatore
dichiarato per quell’aspetto (con l’ordine indicato). Ad esempio


    public class CustomerBo {
        public addCustomer() {System.out.println("customer added!");}
    }

    @Aspect
    public class LoggingAspect {

        @Before("execution(* com.bo.CustomerBo.addCustomer(..))")
        public void logBefore(JoinPoint joinPoint) {
            System.out.println("logBefore() is running!");
        }
    }

    // invocazione del metodo 
    CustomerBo customer = (com.bo.CustomerBo) ... // 
    customer.addCustomer();

    // output
    logBefore() is running!
    customer added!

Come si vede dall’output, la gestione del flusso e’ trasparente al
programmatore (che implementa la classe CustomerBo), e’ il framework che
controlla il flusso.

# Dipendency Injection

DI (Dipendency Injection) e’ un pattern che specifica che non deve
essere il programmatore a definire nel codice le dipendenze di un
oggetto, ma sara’ un componente esterno (framework, servizio, ecc...)
che le fornira’ a quell’oggetto. Questo comporta che l’oggetto che
necessita delle dipendenze :

non ha bisogno di sapere come costruire il servizio. non ha bisogno di
sapere quale specifico servizio sta usando, ma solo la sua interfaccia.

Questi due principi garantiscono l’astrazione rispetto alle dipendenze.
A questo punto, puo’ essere responsabilita’ del client chiedere le
dipendenze (una sorta di auto-injection) o responasbilita’ del framework
fornire le dipendenze (external injection).

Nel primo caso, in genere si puo’ usare un service locator per otterere
la dipendenza e invocare un metodo:

        CustomerManager cm = (CustomerManager) sm.getServiceLocator()
            .get("com.bo.CustomerManager");
        cm.showAllCustomers();

Nel secondo caso, si usa la IoC e sara’ il framework a settare le
dipendenze. Questo comporta che l’oggetto che necessita le dipendenze
non deve invocare il servizio che fornisce le dipendenze, ma sara’ il
contrario, ovvero il servizio che fornisce le dipendenze invochera’
l’oggetto che le necessita per fornirgliele (injection).


