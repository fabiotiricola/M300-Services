# M300-Services - Plattformübergreifende Dienste

## Toolumgebung

Einrichtung einer vollstämdig funktionsfähigen Toolumgebung

### Voraussetzungen
PC/Notebook mit min. 8 GB freiem RAM, ca. 20 GB freiem HD-Speicher und einer Ethernet-Netzwerkkarte.
Ein schneller Netzwerk- (Kabel!) und Internet-Anschluss.

### Vorgehen
1. GitHub Account erstellen
2. Repository erstellen
3. Git Cliet installieren
4. Client Konfigurieren
5. Repository klonen

### SSH-Key erstellen
***
1. `$  ssh-keygen -t rsa -b 4096 -C "beispiel@beispiel.com"`
2. `Enter a file in which to save the key (~/.ssh/id_rsa): [Press enter]`
3. `Enter passphrase (empty for no passphrase): [Passwort]
  Enter same passphrase again: [Passwort wiederholen]`
4. Den Key Online in Git Hub unter Settings einfügen.

### Client konfigurieren
***
1. `$ git config --global user.name "<username>"`
2. `$ git config --global user.email "<e-mail>"`

### Repository klonen
***
1. `$ git clone https://github.com/mc-b/M300`
2. `$cd M300`
3. `$ git pull`
4. `$ git status`

### Repository hochladen (Push)
***
1. `$ cd Pfad/zu/meinem/Repository`
2. `$ git add -A .`
3. `$ git commit -m "Mein Kommentar"`
4. `$ git push`

### VM - Vagrant
***

VMs werden mit Vagrant erstellet. Vagrant ist eine freie Ruby-Anwendung zur Erstellung und Verwaltung virtueller Maschinen und ermöglicht einfache Softwareverteilung.

`vagrant init` -Initialisiert im aktuellen Verzeichnis eine Vagrant-Umgebung und erstellt, falls nicht vorhanden, ein Vagrantfile

`vagrant up` - Erzeugt und Konfiguriert eine neue Virtuelle Maschine, basierend auf dem Vagrantfile

`vagrant ssh` - Baut eine SSH-Verbindung zur gewünschten VM auf

`vagrant status` 	Zeigt den aktuellen Status der VM an

`vagrant port` - Zeigt die Weitergeleiteten Ports der VM an

`vagrant halt` - Stoppt die laufende Virtuelle Maschine

`vagrant destroy` - Stoppt die Virtuelle Maschine und zerstört sie.

#### VM erstellen
***
1. Ein neuen Ordner für dei VM erstellem
2. `$ vagrant init ubuntu/xenial64        #Vagrantfile erzeugen`
3. `$ vagrant up --provider virtualbox    #Virtuelle Maschine erstellen & starten`
4. `$ vagrant ssh                       #SSH-Verbindung zur VM aufbauen`
5. Falls er nicht ein verbindung aufbauen kann `vagrant ssh-conif`
6. Nun kann mit normalen Bash Befehlen gearbeitet werden

Mit ` $ vagrant destroy -f` kann die VM gelöscht werden.

### Apache Webserver 
***
1. Appache Webserver erstellen
2. `$ vagrant up`
3. Webbrowser in der VM öffnen und prüfen, ob der Standard-Content des Webservers unter "http://127.0.0.01:8080" (localhost) erreichbar ist
4. Im Ordner /web die Hauptseite index.html editieren bzw. durch eine andere ersetzen und das Resultat überprüfen.

### Visual Studio Code
***
 Visual Studio Code Dieser freie Quelltext-Editor von Microsoft, ermöglicht uns, unsere Workflows besser zu gestalten und damit die Arbeit um einiges leichter zu machen.

### Box
***

`vagrant box add ubuntu/trusty64`

### Vagrant Konfiguration
***
Das Vagrantfile wird angepasst.

```
# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
config.vm.define :apache do |web|
	web.vm.box = "ubuntu/trusty64"
	#web.vm.provision :shell, path: "config_web.sh"
	#web.vm.hostname = "srv-web"
    #web.vm.network :forwarded_port, guest: 80, host: 4567
    #web.vm.network "public_network", bridge: "en0: WLAN (AirPort)"
end

	# config.vm.box_check_update = false
	# config.vm.network "forwarded_port", guest: 80, host: 8080
	# config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
	# config.vm.network "private_network", ip: "192.168.33.10"
	# config.vm.network "public_network"
	# config.vm.synced_folder "../data", "/vagrant_data"

	config.vm.provider "virtualbox" do |vb|
	# vb.gui = true
	vb.memory = "1024"
end
	# config.vm.provision :shell, inline: <<-SHELL
	# apt-get update
	# apt-get install -y apache2
	# SHELL
end
```

Nach einer Änderung muss der Dienst aktualisiert werden. `$ vagrant provision`

### Packer
***
Mit Packer kann man Images erstellen. Dieses Boxen kann man als Vorlgen für virtuelle Maschienen verwenden.


### VMs Test
***
1x ubuntu/xenial64
1X ubuntu/trusty64

|                | ubuntu/xenial64 | ubuntu/trusty64 |
|----------------|-----------------|-----------------|
| vagrant status | OK              | OK              |
| ssh verbindung | OK              | OK              |
| ip a (network) | OK              | OK              |
| ifconfig       | OK              | OK              |

### Multiple VM's

### Setup
Mit vagrant ist es auch möglich, mehrere VMs in einem Projekt zu verwalten. Dazu kann das Vagrantfile so geändert werden, dass mehrere VMs verwaltet werden können. 

```
Vagrant.configure(2) do |config|

  config.vm.box = "centos/7"

end
```

### Konfigurieren
Um zwei VMs in dem Projekt zu konfigurieren, muss die Zeile "config.vm.box" durch folgende Zeile ersetzt werden.

```
Vagrant.configure(2) do |config|

  config.vm.define "centos7" do |c7|
    c7.vm.box = "centos/7"
  end

  config.vm.define "centos6" do | c6|
    c6.vm.box = "centos/6"
  end

end
```

### UFW Firewall
***
UFW ist eine Firewall. Es ist ein unkompliziertes Kommandozeilen-basiertes Frontend. UFW unterstützt sowohl IPv4 als auch IPv6.

Ausgabe der offenen Ports

    $ netstat -tulpen

Installation

    $ sudo apt-get install ufw

Start / Stop

    $ sudo ufw status
    $ sudo ufw enable
    $ sudo ufw disable

Firewall-Regeln

    # Port 80 (HTTP) öffnen für alle
    vagrant ssh web
    sudo ufw allow 80/tcp
    exit

    # Port 22 (SSH) nur für den Host (wo die VM laufen) öffnen
    vagrant ssh web
    w
    sudo ufw allow from [Meine-IP] to any port 22
    exit

    # Port 3306 (MySQL) nur für den web Server öffnen
    vagrant ssh database
    sudo ufw allow from [IP der Web-VM] to any port 3306
    exit

Zugriff testen

    $ curl -f 192.168.55.101
    $ curl -f 192.168.55.100:3306

Löschen von Regeln

    $ sudo ufw status numbered
    $ sudo ufw delete 1


sudo ufw status

vagrant@ubuntu-xenial:~$ sudo ufw status
Status: active

|To    | Action  |    From
|--    | ------  |    ----
|80/tcp| ALLOW   |    Anywhere
|22    | ALLOW   |    192.168.1.112
|3306  | ALLOW   |    10.0.2.2

### Reverse Proxy

Installation Dazu müssen folgende Module installiert werden:

    $ sudo apt-get install libapache2-mod-proxy-html --> ist schon im apache2-bin enthalten
    $ sudo apt-get install libxml2-dev

Anschliessend die Module in Apache aktivieren:

    $ sudo a2enmod proxy
    $ sudo a2enmod proxy_html
    $ sudo a2enmod proxy_http 

Die Datei /etc/apache2/apache2.conf wie folgt ergänzen:

    ServerName localhost 

Apache-Webserver neu starten:

    $ sudo service apache2 restart
