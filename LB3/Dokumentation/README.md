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



