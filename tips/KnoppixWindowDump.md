### Knoppix Window Dump

Per poter fare uno screenshot di una finestra o dell'intero desktop si può
usare l'utility xwd (eventualmente fare man xwd). Ad esempio:

		sleep 3; xwd -out /tmp/ss.xwd

(lo sleep permette di avere del tempo per posizionarsi)
Per controllare il risultato:

		xwud -in /tmp/ss.xwd

In seguito si può convertirne il formato in uno più comune:

		convert /tmp/ss.xwd /tmp/ss.jpg


e trasferire il file risultato /tmp/ss.jpg dove serve.


