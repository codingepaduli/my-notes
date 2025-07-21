# JPA Introduction

JPA (Java Persistence API) e’ una specifica Java che definisce il
mapping tra gli oggetti Java e la base di dati di un DBMS relazionale.

Le varie implementazioni, come EclipseLink e Hibernate, si occupano
dell’implementazione di questo mapping (su XML o su annotazioni) e
dell’implementazione della gestione della persistenza dei dati di un
DBMS relazionale nelle applicazioni Java.

Alcune implementazioni forniscono anche un mapping verso database non
relazionali, ma questa particolarita’ non fa parte della specifica delle
JPA (fa invece parte delle specifiche Java Data Objects).

Una classe Java che mappa una tabella del database e’ detta Entity
class. Una Entity corrisponde quindi ad una riga della tabella del
database.

Un Entity Manager e’ l’interfaccia che esegue le operazioni sul
database, come memorizzare una entity nel database o come eseruire una
query.

L’insieme di entities che sono gestite da un Entity Manager sono
definite in una persistence unit. E’ possibile creare un Entity Manager
usando il codice:

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence_unit_name");
    EntityManager em = emf.createEntityManager();

La EntityManagerFactory e’ configurata secondo le proprieta del file:

    /src/main/resources/META-INF/persistence.xml

Queste proprieta’ sono in parte standardizzate, in parte sono vendor
specifics. Tra queste proprieta abbiamo in particolare:

1.  l’istruzione standard relativa al provider che fornisce
    l’implementazione delle JPA

         <provider>org.hibernate.ejb.HibernatePersistence</provider>

2.  l’istruzione standard per la ricerca automatica delle entities nei
    sorgenti

         <exclude-unlisted-classes>false</exclude-unlisted-classes>

3.  l’istruzione vendor specific per la creazione automatica di tabelle
    e relazioni nel database

         <property name="hibernate.hbm2ddl.auto" value="create" />

4.  le istruzioni standard relative alla connessione al database, quali
    user, password, schema, ecc...

Nota importante: i privilegi associati ad un utente del database devono
essere committati con il comando SQL:

     FLUSH PRIVILEGES;

Il test di connessione con il database puo’ essere fatto utilizzando la
riga di comando:

     mysql --user=jpa --database=jpaAnnotations -p

# Entities

## Creare un Entity

Le entities sono semplici classi serializzabili, con getter e setter.

Ogni classe e’ annotata con:

    @Entity
    @Table(name="user_role")
    public class UserRole implements Serializable { ... }

la chiave primaria e’ annotata con:

    @Id
    private String username;

ed ogni campo e’ annotato con:

    @Column
    private String role;

Notare che la chiave primaria e’ possibile generarla in modo che sia
assegnata dal database, ci sono diverse strategie per generare la
chiave:

     @Id @GeneratedValue(strategy=GenerationType.AUTO)
     private Long id;

## Gestire un entity

E’ possibile rendere persistente una entity attraverso l’ Entity
Manager:

     em.getTransaction().begin();

     UserRole role = new UserRole();
     role.setRole("Admin");

     em.persist(role);
     em.getTransaction().commit();

Notare che solo al commit della transazione i dati saranno veramente
scritti sul database.

E’ possibile recuperare una entity con:

     em.getTransaction().begin();

     UserRole role = em.getReference(UserRole.class, 2L);

     em.getTransaction().commit();

Per quanto riguarda recuperare il valore di un campo (annotato con
@GeneratedValue) autogenerato dal database, e’ da tener presente che
questo sara’ disponibile solo al commit della transazione, direttamente
nel campo interessato:

     em.getTransaction().begin();

     UserRole role = new UserRole();
     role.setRole("Admin");

     em.persist(role);
     em.getTransaction().commit();
     
     System.out.println(role.getId());

# Relazioni

Le relazioni rappresentano un legame tra 2 o piu entita’ e possono
essere di vario tipo, ovvero 1:1, 1:N, N:M. Per ogni relazione possiamo
specificare la cardinalita’, ovvero il minimo ed il massimo delle
occorrenze dell’entita’ che partecipa alla relazione.

Esempi di cardinalita’ della relazione tra un entita’ impiegato e le
seguenti entita’:

1.  (0,1) NumeroPatente, vuol dire che un impiegato puo’ avere una
    patente ma anche non averla, o meglio un impiegato puo’ avere al
    piu’ una patente.

2.  (0,n) NumeroTelefono, vuol dire che un impiegato puo’ avere molti
    numeri di telefono, ma puo’ anche non aver alcun numero di telefono.

3.  (1,n) TitoloStudio, vuol dire che un impiegato puo’ avere molti
    titoli di studio, ma deve averne almeno uno.

## Relazioni 1 : 1

Descriviamo ora la seguente relazione: Un utente puo’ avere una galleria
di immagini, ma non e’ detto. Una galleria non ha sempre un utente
associato. La relazione e’ di tipo 1 : 1 ed ha cardinalita’ (0, 1) in
entrambi i versi di percorrenza.

L’implementazione e’ la seguente:

    @Table
    @Entity
    public class User implements Serializable {
        @Id
        private String username;
        
        @OneToOne
        @JoinColumn(referencedColumnName="id", nullable=true)
        private Gallery gallery;
    }

    @Entity
    @Table(name="gallery")
    public class Gallery implements Serializable {

        @Id @GeneratedValue(strategy=GenerationType.AUTO)
        private Long id;
        
        @OneToOne(mappedBy="gallery", optional=true)
        private User user;
    }

Si puo’ notare che la classe User ha un campo gallery con le annotazioni
@OneToOne e @JoinColumn. Quest’ultima specifica il campo della classe
Gallery (il campo ID) che’ identifica univocamente la galleria (e’
chiave primaria).

Dal lato opposto, si nota che Gallery ha solo l’annotazione
@OneToOne(mappedBy="gallery"), cioe’ dice che questo campo e’ gia stato
mappato in una relazione 1:1 dal Field gallery della classe User.

Attenzione quindi al verso della relazione, User e’ il proprietario
della galleria.
