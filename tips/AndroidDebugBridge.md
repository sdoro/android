### Android Debug Bridge (adb)

Per poter avere le permissions per accedere ad un terminale REALE, occorre
costruire un file /etc/udev/rules.d/51-android.rules con il seguente
contenuto:

SUBSYSTEM=="usb", ATTR{idVendor}=="04e8", MODE="0666", GROUP="plugdev"

il mio device ha idVendor 04e8 ;)
Come lo posso scoprire? Dopo aver inserito il cavo con il cellulare acceso
sulla porta USB del pc basta scorrere
l''output del comando dmesg. Un''alternativa invece:

	$ lsusb | grep -i samsung
	Bus 002 Device 003: ID 04e8:685e Samsung Electronics Co., Ltd GT-I9100 Phone [Galaxy S II] (USB Debugging mode

Per la costruzione automagica può essere utile il seguente
[gist]
(https://gist.github.com/sdoro/69fdc03041ecc4605754) eseguito come utente root.

Dopo togliamo e reinseriamo il cellulare nella porta USB ed eseguire la scansione dei device collegati:
come segue:

	$ adb devices
	* daemon not running. starting it now on port 5037 *
	* daemon started successfully *
	List of devices attached
	0123456789ABCDEF    device


