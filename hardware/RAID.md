# RAID

2.  E’ un sistema che usa un insieme di hard disk per condividere o
    replicare le informazioni al fine di aumentare le prestazioni ed
    evitare perdite di dati nel caso di guasti ad un singolo hard disk.

    Il sistema RAID 0 divide equamente i dati di un File tra due o più
    dischi.

    Come si vede nella figura, il File A viene diviso in parti e ogni
    parte scritta su un diverso hard disk in contemporanea alle altre
    parti.

    <img src="media/media/image1.png"
    style="width:2.89236in;height:2.45486in" />

    Come si vede, le informazioni non sono duplicate, e quindi è
    possibile la perdita di dati nel caso di guasto ad un hard disk.

    Le parti A1, A2, A3 e A4 vengono lette e scritte in contemporanea,
    quadruplicando la velocità per il trasferimento del file.

    **RAID livello 1**

    <img src="media/media/image2.png"
    style="width:1.55903in;height:2.71319in" />Il sistema RAID 1 crea
    una copia esatta (mirror) di tutti i dati dell’hard disk.

    Usa quindi la metà degli hard disk per memorizzare le informazioni e
    l’altra metà per la copia dei dati.

    Come si vede dalla figura i file A1, A2, A3 e A4 sono copiati sul
    secondo hard disk, quindi in caso di guasto al primo hard disk i
    file non vanno persi perché sono contenuti nel secondo hard disk!!

    Tutti e 2 gli hard disk vengono usati per leggere i dati di un file

    Se voglio leggere tutti i file, allora A1 e A3 saranno letti sul
    primo hard disk, mentre A2 eA4 saranno letti sul secondo hard disk
    dimezzando i tempi di lettura (perché la lettura sui 2 hard disk
    avviene in contemporanea).

    La scrittura però impiega lo stesso tempo perché allo stesso tempo
    scriviamo su entrambi i dischi il File A1, allo stesso tempo
    scriviamo su entrambi i dischi il File A2, allo stesso tempo
    scriviamo su entrambi i dischi il File A3, ecc..

    <img src="media/media/image3.png"
    style="width:5.64236in;height:2.64236in" />

    Il RAID livello 0+1 effettua sia una copia dei file, sia una
    divisione equa dei file tra più hard disk.

    Come si vede in figura il file A viene sia spezzato in parti, sia
    copiato sugli hard disk “copia”.

    Si ricorda che il RAID 0 è <u>inutile</u> in caso di guasto, il RAID
    1 e 0+1 sono utili in caso di guasto ad UN SOLO hard disk, ed
    esistono i RAID livello 6 e 7 che sono utili in previsione di guasti
    a più di un hard.

# 
