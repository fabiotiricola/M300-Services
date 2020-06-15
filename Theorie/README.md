# M300-Services - Plattformübergreifende Dienste

## Theorie

### Virtuelle Maschinen
Eine virtuelle Maschine (VM) ist ein eigenständiger Computer. Dieser Computer benötigt jedoch keine neue Hardware Teile. Er wird vom Hypervisor verwaltet. Der Hypervisor ist auf Computern oder Servern eine Softwarekomponente. Er wird auch als Virtual Machine Monitor (VMM) bezeichnet. Ein VM kann genau die gleichen Aufgaben erfüllen, wie ein normaler PC, solange die VM die benötigten Hardware Ressourcen bekommt. So können Windows Systeme und Linux Systeme auf einem Gerät geführt werden.

### VirualBox
Mit VirtualBox lassen sich virutelle Maschinen auf dem Computer erstellen. So kann man auf einem Windows-System ein Ubuntu-VM laufen lassen. Daoch dafür braucht es natürlich die dafür benötigte leistung. VirtualBox hat ein GUI und ist einfach zu bedienen. 

### Vagrant
Mit Vagrant kann man virtuelle Maschinen erstellen und verwalten. Mit Vagrant kann man virtuelle maschinen viel schneller aufsetzten. Das ist ein sehr grosser Vorteil. Vorallem, wenn man viele VMs erstllen muss. Mit Programmen wie VirtualBox würde dise vorgang viel länger gehen. Vagrant hat kein GUI. 

### Visual Studio Code
Visual Studio Code ist ein Quelltext-Editor von Mirosoft. Mit diesem tool kann man Desktop-Programme entwickeln, Webdienste Programmieren und vieles mehr.

### cmder
Cmder ist ähnlih wie das CMD auf allen Windows Betriebssysteme. Man kann die gleichen Befehle vom CMD, auch in cmder verwenden.

### VM - Mögliche Gefahrenbereiche
* Hypervisor – Backdoors
  * Gezielt eingebaute Funktion, um die Kontrolle über den Hypervisor zu übernehmen (vom Entwickler oder via Malware)
  * Damit erhält die zugreifende Person Kontrolle über alle VM auf diesem Hypervisor
* Hypervisor – Bugs
  * Software-Fehler, die ermöglichen, dass Malware eindringen kann
  * verhindern unter Umständen den Betrieb des Hypervisors und somit aller VM (Single Point of Failure)
* Virtuelle Maschinen
  * Bugs in VM-Treiber oder Dienstprogrammen: Ermöglichen Ausbruch von Malware/Hackern aus infizierter VM
  * Übernahme der Kontrolle von Hypervisor (s. vorher)
* Virtuelle Netzwerke
  * Kommunikation zwischen VMs nicht kontrollier- oder steuerbar
  * Ermöglicht unbemerkte Verbreitung von Malware
  
### VM - Gegenmassnahmen
* Hypervisor – Backdoors
  * Sich informiert halten, Studium einschlägiger Diskussionsforen, Vertraue in Entwickler
* Hypervisor – Bugs
  * Sich informiert halten. Updates!
* Virtuelle Maschinen
  * Gast-OS Updates, Gast-OS Antimalware, Hypervisor Antimalware
* Virtuelle Netzwerke
  * Virtuelle Netzwerküberwachung realisieren (ev. Grundfunktionalität Hypervisor oder Zusatzprodukte)

### Repetition
***
Cloud Computing
1. Was versteht man unter Cloud-Computing?
   * Darunter versteht man die Ausführung von Programmen, die nicht auf dem lokalen Rechner installiert sind, sondern auf einem anderen Rechner, der aus der Ferne aufgerufen wird (bspw. über das Internet).

2. Was versteht man unter Infrastructure as a Service - IaaS?
Antwort
   * Die Infrastruktur stellt die unterste Schicht im Cloud Computing dar. Der Benutzer greift hier auf bestehende Dienste innerhalb des Systems zu, verwaltet seine Recheninstanzen (virtuelle Maschinen) allerdings weitestgehend selbst.

Infrastructure as Code

3. Was ist der Unterschied zur manuellen Installation der VM
   * Automation, Wiederholbarkeit, Dokumentation

Vagrant

4. Was wird mit Vagrant erzeugt?
   * Virtuelle Maschinen

5. Welche der Aussagen treffen zu:

    a) Vagrant ist ein HyperVisor
    b) Vagrant erzeugt virtuelle Maschinen, dabei werden mehrere HyperVisor und Cloud Umgebungen (z.B. AWS) unterstützt.
    c) Vagrant erzeugt Container
   * b) Vagrant erzeugt virtuelle Maschinen, dabei werden mehrere HyperVisor und Cloud Umgebungen (z.

6. In welchen Bereich des Cloud-Computings ist Vagrant einzuordnen: IaaS, PaaS, SaaS?
   * IaaS

7. Welche Alternativen zu Vagrant bestehen?
   * Nanobox 

8. Wo Speichert Vagrant seine Konfiguration?
   * Vagrantfile

9. as bedeutet die Fehlermeldung "A Vagrant environment or target machine is required to run this command."?
   * Sie befinden im falschen Verzeichnis, wo keine Vagrantfile vorhanden ist.

10. Bei welcher LPI Zertifizierung nützt mir das Vagrant Wissen?
    * [DevOps Tools Engineer](https://www.lpi.org/our-certifications/devops-overview) 


