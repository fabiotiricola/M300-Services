# M300-Services - Plattformübergreifende Dienste

## Toolumgebung

Einrichtung einer vollstämdig funktionsfähigen Toolumgebung

### Voraussetzungen
PC/Notebook mit min. 8 GB freiem RAM, ca. 20 GB freiem HD-Speicher und einer Ethernet-Netzwerkkarte.
Ein schneller Netzwerk- (Kabel!) und Internet-Anschluss.

## Docker
Docker ist eine Open-Source-Software, mit der sich Container zur Virtualisierung von Anwendungen erstellen und betreiben lassen. Auf einem Linux-, Windows- oder macOS-basierten Host-System werden mit der Software Laufzeitumgebungen zur Ausführung voneinander isolierter Anwendungen bereitgestellt, ohne dass die Virtualisierung des kompletten Betriebssystems notwendig ist.

### Das prinzipielle Containerkonzept

Das Containerkonzept ist eine Virtualisierungstechnik, die Anwendungen auf einem Host-System voneinander isoliert. Im Vergleich zu virtuellen Maschinen werden nicht komplette Rechner inklusive Betriebssystem virtualisiert, sondern nur die zur Ausführung der Anwendungen benötigten Laufzeitumgebungen mit ihren Ressourcen wie Anwendungscode, Bibliotheken oder Konfigurationen. Das Containerformat ist genau definiert. Container inklusive ihrer Anwendungen und Laufzeitumgebung lassen sich in Form einer Datei leicht auf andere Host-Systeme übertragen.

### Docker befehle
Alle laufenden Container stoppen

`docker stop $(docker ps -a -q)`

Alle laufenden Container löschen

`docker rm $(docker ps -a -q)`

Alle Images löschen

`docker rmi $(docker images -q)`

Start von neuen Container

`docker run`

Hier können noch anpassungengemacht werden. 

Überblick von den Contariner bekommen

`docker ps`

Weitere Commands

`docker images `

`docker start `

`docker inspect`

### Dockerfile

Ein Dockerfile ist eine Textdatei mit einer Reihe von Schritten, die genutzt werden können, um ein Docker-Image zu erzeugen.

Dazu wird zuerst ein Verzeichnis erstellt und darin eine Datei mit Namen "Dockerfile".

### Jenkins

Vom Hub herunterladen
`docker pull jenkins`


Docker erstellen. Jenkins ist nun auf Port 8080:8080 ereichbar.
`docker run -p 8080:8080 -p 50000:50000 -v /your/home:/var/jenkins_home jenkins`

Hier bekommt man auch einen Key, den man wie folgt einsetzen muss.

Nun im Browser via Localhost:8080 auf denJenkins connecten.

Danach müssen eine Einstellunge bearbeitet werde. 

Im Jenkinskann man nur unter User einstellungen einbesseren Passwort setzen.

Nun kann man in Jenkis Jobs erstellen.

### Test

docker volume ls - OK - Volume myJenkins bereit

docker ps - OK Docker ist am laufen

### Sicherheit


