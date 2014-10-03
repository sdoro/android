### Android Debug Bridge (adb)

Per poter avere le permissions per accedere ad un terminale REALE, occorre
costruire un file /etc/udev/rules.d/51-android.rules con il seguente
contenuto:

SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666", GROUP="plugdev"

il mio device ha idVendor 04e8 ;)

Può essere utile il seguente
[gist]
(https://gist.github.com/sdoro/69fdc03041ecc4605754) eseguito come utente root.

Se tutto è andato bene possiamo reinserire il terminale e proseguire
come segue:

	$ adb devices
	* daemon not running. starting it now on port 5037 *
	* daemon started successfully *
	List of devices attached
	0123456789ABCDEF    device


