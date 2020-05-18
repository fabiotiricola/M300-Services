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

### VM
***
VMs werden mit Vagrant erstellet. Vagrant ist eine freie Ruby-Anwendung zur Erstellung und Verwaltung virtueller Maschinen und ermöglicht einfache Softwareverteilung.

#### VM erstellen
***
1. Ein neuen Ordner für dei VM erstellem
2. `$ vagrant init ubuntu/xenial64        #Vagrantfile erzeugen`
3. `$ vagrant up --provider virtualbox    #Virtuelle Maschine erstellen & starten`
4. `$ vagrant ssh                       #SSH-Verbindung zur VM aufbauen`
5. Nun kann mit normalen Bash Befehlen gearbeitet werden

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
 