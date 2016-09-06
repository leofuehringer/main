��    <      �              �  ?  �  �     �  �  �   _  �   N  �  �  2   }
  8   �
  �   �
  q  �  �        �  W     r   k  ^   �  �  =  �   �  �  �  �  \  [     �   w  u   i     �  [   �  �   [  �      �  %     d   4  L   �    �        �   !  u   �!  ,   "  &   <"  Y   c"  �   �"     L#  �   g#  |   T$     �$  6  �$  %   "&  .   H&  �   w&  �   3'  �   (  <   �(  �  
)  6   �*      �*  "   �*  %   +  i   B+  8   �+  P   �+  (   6,  �   _,  �  �,  ?  �.  �   �/  �  n0  �   %2  �   3  �  �3  2   C5  8   v5  �   �5  q  a6  �   �9     �:  W   �:  r   1;  ^   �;  �  <  �   �=  �  x>  �  "@  [   �A  �   =B  u   /C     �C  [   �C  �   !D  �  �D    �F  %   �H  d   �H  L   _I    �I    �J  �   �K  u   _L  ,   �L  &   M  Y   )M  �   �M     N  �   -N  |   O     �O  6  �O  &   �P  .   Q  �   >Q  �   �Q  �   �R  <   �S  �  �S  6   hU      �U  "   �U  %   �U  i   	V  8   sV  P   �V  (   �V  �   &W   Aktivieren Sie, falls noch nicht geschehen, in der Rechnerfirmware des vorbereiteten Rechners den UEFI-Netzwerk-Boot. In den BIOS-Einstellungen wird dabei oft zwischen *Legacy*- und *UEFI*-Boot unterschieden. Gegebenenfalls müssen Sie auf das Rechnerhandbuch zurückgreifen, um die entsprechende Einstellung zu finden. Alternativ können Sie in der Schulkonsole als Benutzer *Administrator* unter *LINBO\|Fernsteuerung* eine entsprechende Aufgabe erstellen. Alternativ lässt sich auch das Cloop-Image einer Installation von einem BIOS-Rechner auf einem UEFI-Rechner einspielen ((Hat hier mit Ubuntu 14.04 problemlos geklappt und sollte auch mit anderen Linuxen funktionieren)). Nachdem man den UEFI-Rechner einmal gebootet hat, erstellt man einfach ein neues Image und verteilt das an die restlichen Rechner. Das Image lässt sich fürderhin für BIOS- und UEFI-Rechner gleichermaßen verwenden. Alternative Grub-Themes lassen sich per `theme <http://www.gnu.org/software/grub/manual/grub.html#theme>`__-Variable konfigurieren (``set theme=``). Diese müssen in einem Verzeichnis unter ``/var/linbo/boot/grub/themes`` abgelegt werden. Auch mehrere parallel installierte Betriebssysteme sind für Linbo kein Problem. Es erstellt und verwaltet automatisch die notwendigen UEFI-Booteinträge. Auch mit Windows ist es möglich ein auf einem BIOS-Rechner erstelltes Image auf der UEFI-Maschine zu verwenden. Zunächst wird das Betriebssystem zwar nicht starten, aber die Chancen stehen gut, dass es nach einer Startreparatur mit dem Installationsdatenträger klappt. Hat man Glück und Windows bootet schließlich, kann man das auf dem UEFI-Rechner erstellte Image auch auf BIOS-Systemen verwenden. Automatische Erkennung von 32- und 64bit-Hardware. Automatisches Linbo-Update auf lokal gebooteten Clients. Beachten Sie, dass für den EFI-Betrieb als erste und zweite Partition eine EFI- und eine MSR-Partition definiert sein müssen. Diese Partitionen sollten Sie also nicht ändern. Beim Start über Grub wird zunächst die Konfigurationsdatei geladen, die lokal unter `/cache/boot/grub/grub.cfg <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/share/templates/grub.cfg.local>`__ bzw. auf dem Server unter `/var/linbo/boot/grub/grub.cfg <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/share/templates/grub.cfg.pxe>`__ abgelegt ist. Diese Datei veranlasst den Grub-Bootloader eine etwaige lokal im Cache abgelegte Grub-Konfiguration auszulesen. Wurde zuvor durch einen von Linbo initiierten Betriebssystemstart die Grub-Environmentvariable *reboot\_grub* mit einer Partitionsinformation belegt, startet Grub das Betriebssystem, das auf dieser Partition installiert ist. Ist die Variable nicht gesetzt, wird die gruppenspezifische Konfigurationsdatei nachgeladen, die für die jeweilige Rechnergruppe spezifische Menüeinträge enthält. Bevor Sie den Rechner mit der geänderten Einstellung booten, veranlassen Sie zunächst das Partitionieren per *linbo-remote* auf dem Server. Angenommen der Rechner heißt *r100-pc01* bereitet das folgender Befehl auf dem Server vor: Boot-Konfiguration mit Grub Danach folgt der Eintrag (Nr. 1) für den unsynchronisierten Start des Betriebssystems: Der erste Menü-Eintrag (Nr. 0) startet **LINBO**, falls möglich aus dem lokalen Cache, ansonsten über Netzwerk: Der nächste Menü-Eintrag (Nr. 2) ermöglicht den synchronisierten Start des Betriebssystems: Die Bootmenü-Einträge müssen in der Regel nicht angepasst werden. Je nach eigener Anforderung kann es eventuell notwendig werden die Reihenfolge oder den Text der Menü-Einträge zu ändern oder einzelne Einträge (z.B. für den unsychronisierten Start) zu entfernen. Im letzten Fall löscht man einfach den kompletten Zeilenbereich von *menuentry* bis zur schließenden geschweiften Klammer. Die Vorgehensweise unterscheidet sich nicht von der bei BIOS-Systemen: Nachdem man die Clientfestplatte mit Linbo partitioniert hat, bootet man den Installationsdatenträger (natürlich im UEFI-Modus) und installiert nach Anleitung. Die bisherige PXE-Bootkonfiguration unter ``/var/linbo/pxelinux.cfg`` ist damit obsolet. Spezifische PXE-Boot-Einstellungen für eine bestimmte Rechnergruppe werden jetzt in den Boot-Konfigurationsdateien vorgenommen, die Im Verzeichnis ``/var/linbo/boot/grub`` unter dem Namen der jeweiligen Rechnergruppe mit der Erweiterung *.cfg* angelegt werden.  In dieser Datei können für spezielle Zwecke Anpassungen gemacht werden. Die gruppenspezifische Boot-Konfigurationsdatei wird automatisch beim Workstationimport ((Siehe Abschnitt `Client registrieren <dokumentation/handbuch/linbo/registration>`__)) aus der start.conf-Datei der Gruppe erstellt. Sie enthält einen Menü-Eintrag für Linbo und drei weitere für jedes in der start.conf-Datei definierte Betriebssystem. Das Menü ist standardmäßig ausgeblendet und so konfiguriert, dass automatisch Linbo gebootet wird. Die gruppenspezifische Bootkonfiguration kann auch über die Schulkonsole angepasst werden. Die start.conf-Dateien erhalten eine neue Option *SystemType*, der man die Werte *bios\|bios64\|efi32\|efi64* zuweisen kann. Zunächst ist der Standardwert *bios* eingetragen, der für alle Clients mit konventionellem BIOS-Boot funktioniert. Einheiten-Angabe für Partitionsgrößen in der start.conf-Datei (M für Megabyte, G für Gigabyte, T für Terabyte). Erstellung der start.conf-Datei Falls Ihre Rechnergruppe anders heißt, passen Sie den Namen der Zieldatei entsprechend an. Falls Sie keine Datenpartition benötigen, löschen Sie die Definition für die fünfte Partition einfach heraus. Sie können auch weitere Paritionen anfügen (bis zu insgesamt 128). Für Windows auf UEFI-Systemen ist zusätzlich zur EFI-Partition noch eine *Microsoft reserved partition (msr))* (128 MB) vorzusehen, sodass das Betriebssystem in die dritte Partition installiert wird. Ein entprechendes start.conf-Beispiel ist unter `/var/linbo/examples/start.conf.win7-efi <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/var/examples/start.conf.win7-efi>`__ abgelegt. Die Vorgehensweise ist wie gehabt: zuerst Partitionierung mit Linbo, danach Installation. Für die Installation einer Linux-Distribution auf UEFI-Systemen ist in der start.conf-Datei eine EFI-Partition (200 MB) vorzusehen. Außerdem ist die Option *SystemType* auf *efi64* einzustellen. Damit wird die Clientfestplatte entsprechend dem `GPT-Schema <https///de.wikipedia.org/wiki/GUID_Partition_Table>`__ partitioniert. Eine Beispiel-Datei ist auf dem Server unter `/var/linbo/examples/start.conf.ubuntu-efi <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/var/examples/start.conf.ubuntu-efi>`__ abgelegt. Gruppenspezifische Boot-Konfiguration Hat man das Grub-Bootmenü aktiviert, präsentiert es sich beim nächsten Start des Clients z.B. so: Hier ein Beispiel für ein System mit Windows 7. Zunächst der globale Teil: Im ersten Schritt erstellen Sie für die Rechnergruppe *win7-efi* unter */var/linbo* eine EFI-gerechte start.conf-Datei für eine neue Rechnergruppe *win7-efi*. Kopieren Sie dazu einfach die Beispiel-Datei *start.conf.win7-efi* nach */var/linbo* (als Benutzer root auf dem Server): Installieren Sie nun Windows 7 mit Hilfe des Installationsdatenträgers wie gewohnt. Wählen Sie dazu zu Beginn der Installation die richtige Partition für die Installation aus (im Beispiel ist es die dritte Partition). Gegebenenfalls muss sie formatiert werden. Ist der Rechner eingerichtet, erstellen Sie mit **LINBO** ein Image, das Sie wie gewohnt auf weitere Rechner derselben Gruppe ausrollen können. Ist die start.conf-Datei erstellt, nehmen Sie den Rechner über den Workstations-Import in die Gruppe *win7-efi* auf. Kernel 4.2.0 mit aktuellen Hardwaretreibern. Linux-Clients mit UEFI-Boot einrichten Minimierte Hardwareprobleme, da nun vor dem Betriebssystemstart immer ein Reboot erfolgt. Mit dem Wert für `gfxpayload <http://www.gnu.org/software/grub/manual/grub.html#gfxpayload>`__ lassen sich Auflösung und Farbtiefe anpassen. Multiboot-Systeme mit UEFI Nach dem Upgrade sollten alle Clients wie gewohnt weiter funktionieren. Die Bildschirmausgabe beim Bootvorgang ist leicht verändert und vor dem Betriebssystemstart aus der Linbo-Oberfläche heraus wird nun immer ein Neustart initiiert. Nach dem globalen Teil folgen die Menüeinträge für **LINBO** und die Betriebssysteme (je einer für Start, Sync und Neu). Neueinrichten des Clients Neuerung bei lokal gebooteten Clients: Wird beim Linbo-Start eine neue Version erkannt, wird diese automatisch im Cache installiert. Danach erfolgt ein automatischer Reboot, damit die neue Version sofort aktiv wird. Analog verfährt Linbo, wenn eine geänderte Grubkonfigurationsdatei für die Gruppe vorliegt. Neuerungen in linuxmuster-linbo 2.3.0 Partitionierung im GPT-Modus auf EFI-Systemen. Passen Sie die Partitionsgrößen in der start.conf-Datei nach Ihren Bedürfnissen an. Sie können Einheiten für die Größen angeben (M für Megabyte, G für Gigabyte, T für Terabyte): Pflegt man eigene Anpassungen in die Datei ein, sollte man noch die Zeile ``### managed by linuxmuster.net ###`` entfernen, damit die Änderungen beim Workstationsimport nicht wieder überschrieben werden. Schalten Sie danach den vorbereiteten Rechner ein, wird **LINBO** die Festplatte gemäß dem in der start.conf-Datei definierten Partitionsschema neu partionieren und anschließend wieder herunterfahren. Schließlich folgt der Menü-Eintrag (Nr. 3) für Neu+Start: Um das Boot-Menü zu aktivieren, setzt man einfach den `Timeout <http://www.gnu.org/software/grub/manual/grub.html#timeout>`__-Wert hoch. Nach Ablauf der angegebenen Sekunden wird der `Default <http://www.gnu.org/software/grub/manual/grub.html#default>`__-Eintrag gestartet. Schlägt dies fehl, wird versucht den `Fallback <http://www.gnu.org/software/grub/manual/grub.html#fallback>`__-Eintrag zu starten. Umstellung des lokalen und PXE-Bootsystems auf Grub 2. Unterstützung für Grub-Themes. Unterstützung von 64bit-Hardware. Unterstützung von UEFI-Boot-Clients. Vereinfachte Boot-Konfiguration in nur noch einer Grub-Konfigurationsdatei für lokalen und Netzwerkboot. Vorgehensweise bei der Installation von Windows mit UEFI Vorkonfigurierte Grub-Bootmenüs können einfach aktiviert und angepasst werden. Windows-Clients mit UEFI-Boot einrichten linuxmuster-linbo ab Version 2.3.0 verwendet `Grub <http://www.gnu.org/software/grub/manual/>`__ als Bootloader für Netzwerkboot und lokalen Boot. Project-Id-Version: linuxmuster.net 6.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-09-03 15:19+0700
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: zefanja <npm@zefanjas.de>, 2016
Language-Team: English (https://www.transifex.com/linuxmusternet/teams/62586/en/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 Aktivieren Sie, falls noch nicht geschehen, in der Rechnerfirmware des vorbereiteten Rechners den UEFI-Netzwerk-Boot. In den BIOS-Einstellungen wird dabei oft zwischen *Legacy*- und *UEFI*-Boot unterschieden. Gegebenenfalls müssen Sie auf das Rechnerhandbuch zurückgreifen, um die entsprechende Einstellung zu finden. Alternativ können Sie in der Schulkonsole als Benutzer *Administrator* unter *LINBO\|Fernsteuerung* eine entsprechende Aufgabe erstellen. Alternativ lässt sich auch das Cloop-Image einer Installation von einem BIOS-Rechner auf einem UEFI-Rechner einspielen ((Hat hier mit Ubuntu 14.04 problemlos geklappt und sollte auch mit anderen Linuxen funktionieren)). Nachdem man den UEFI-Rechner einmal gebootet hat, erstellt man einfach ein neues Image und verteilt das an die restlichen Rechner. Das Image lässt sich fürderhin für BIOS- und UEFI-Rechner gleichermaßen verwenden. Alternative Grub-Themes lassen sich per `theme <http://www.gnu.org/software/grub/manual/grub.html#theme>`__-Variable konfigurieren (``set theme=``). Diese müssen in einem Verzeichnis unter ``/var/linbo/boot/grub/themes`` abgelegt werden. Auch mehrere parallel installierte Betriebssysteme sind für Linbo kein Problem. Es erstellt und verwaltet automatisch die notwendigen UEFI-Booteinträge. Auch mit Windows ist es möglich ein auf einem BIOS-Rechner erstelltes Image auf der UEFI-Maschine zu verwenden. Zunächst wird das Betriebssystem zwar nicht starten, aber die Chancen stehen gut, dass es nach einer Startreparatur mit dem Installationsdatenträger klappt. Hat man Glück und Windows bootet schließlich, kann man das auf dem UEFI-Rechner erstellte Image auch auf BIOS-Systemen verwenden. Automatische Erkennung von 32- und 64bit-Hardware. Automatisches Linbo-Update auf lokal gebooteten Clients. Beachten Sie, dass für den EFI-Betrieb als erste und zweite Partition eine EFI- und eine MSR-Partition definiert sein müssen. Diese Partitionen sollten Sie also nicht ändern. Beim Start über Grub wird zunächst die Konfigurationsdatei geladen, die lokal unter `/cache/boot/grub/grub.cfg <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/share/templates/grub.cfg.local>`__ bzw. auf dem Server unter `/var/linbo/boot/grub/grub.cfg <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/share/templates/grub.cfg.pxe>`__ abgelegt ist. Diese Datei veranlasst den Grub-Bootloader eine etwaige lokal im Cache abgelegte Grub-Konfiguration auszulesen. Wurde zuvor durch einen von Linbo initiierten Betriebssystemstart die Grub-Environmentvariable *reboot\_grub* mit einer Partitionsinformation belegt, startet Grub das Betriebssystem, das auf dieser Partition installiert ist. Ist die Variable nicht gesetzt, wird die gruppenspezifische Konfigurationsdatei nachgeladen, die für die jeweilige Rechnergruppe spezifische Menüeinträge enthält. Bevor Sie den Rechner mit der geänderten Einstellung booten, veranlassen Sie zunächst das Partitionieren per *linbo-remote* auf dem Server. Angenommen der Rechner heißt *r100-pc01* bereitet das folgender Befehl auf dem Server vor: Boot-Konfiguration mit Grub Danach folgt der Eintrag (Nr. 1) für den unsynchronisierten Start des Betriebssystems: Der erste Menü-Eintrag (Nr. 0) startet **LINBO**, falls möglich aus dem lokalen Cache, ansonsten über Netzwerk: Der nächste Menü-Eintrag (Nr. 2) ermöglicht den synchronisierten Start des Betriebssystems: Die Bootmenü-Einträge müssen in der Regel nicht angepasst werden. Je nach eigener Anforderung kann es eventuell notwendig werden die Reihenfolge oder den Text der Menü-Einträge zu ändern oder einzelne Einträge (z.B. für den unsychronisierten Start) zu entfernen. Im letzten Fall löscht man einfach den kompletten Zeilenbereich von *menuentry* bis zur schließenden geschweiften Klammer. Die Vorgehensweise unterscheidet sich nicht von der bei BIOS-Systemen: Nachdem man die Clientfestplatte mit Linbo partitioniert hat, bootet man den Installationsdatenträger (natürlich im UEFI-Modus) und installiert nach Anleitung. Die bisherige PXE-Bootkonfiguration unter ``/var/linbo/pxelinux.cfg`` ist damit obsolet. Spezifische PXE-Boot-Einstellungen für eine bestimmte Rechnergruppe werden jetzt in den Boot-Konfigurationsdateien vorgenommen, die Im Verzeichnis ``/var/linbo/boot/grub`` unter dem Namen der jeweiligen Rechnergruppe mit der Erweiterung *.cfg* angelegt werden.  In dieser Datei können für spezielle Zwecke Anpassungen gemacht werden. Die gruppenspezifische Boot-Konfigurationsdatei wird automatisch beim Workstationimport ((Siehe Abschnitt `Client registrieren <dokumentation/handbuch/linbo/registration>`__)) aus der start.conf-Datei der Gruppe erstellt. Sie enthält einen Menü-Eintrag für Linbo und drei weitere für jedes in der start.conf-Datei definierte Betriebssystem. Das Menü ist standardmäßig ausgeblendet und so konfiguriert, dass automatisch Linbo gebootet wird. Die gruppenspezifische Bootkonfiguration kann auch über die Schulkonsole angepasst werden. Die start.conf-Dateien erhalten eine neue Option *SystemType*, der man die Werte *bios\|bios64\|efi32\|efi64* zuweisen kann. Zunächst ist der Standardwert *bios* eingetragen, der für alle Clients mit konventionellem BIOS-Boot funktioniert. Einheiten-Angabe für Partitionsgrößen in der start.conf-Datei (M für Megabyte, G für Gigabyte, T für Terabyte). Erstellung der start.conf-Datei Falls Ihre Rechnergruppe anders heißt, passen Sie den Namen der Zieldatei entsprechend an. Falls Sie keine Datenpartition benötigen, löschen Sie die Definition für die fünfte Partition einfach heraus. Sie können auch weitere Paritionen anfügen (bis zu insgesamt 128). Für Windows auf UEFI-Systemen ist zusätzlich zur EFI-Partition noch eine *Microsoft reserved partition (msr))* (128 MB) vorzusehen, sodass das Betriebssystem in die dritte Partition installiert wird. Ein entprechendes start.conf-Beispiel ist unter `/var/linbo/examples/start.conf.win7-efi <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/var/examples/start.conf.win7-efi>`__ abgelegt. Die Vorgehensweise ist wie gehabt: zuerst Partitionierung mit Linbo, danach Installation. Für die Installation einer Linux-Distribution auf UEFI-Systemen ist in der start.conf-Datei eine EFI-Partition (200 MB) vorzusehen. Außerdem ist die Option *SystemType* auf *efi64* einzustellen. Damit wird die Clientfestplatte entsprechend dem `GPT-Schema <https///de.wikipedia.org/wiki/GUID_Partition_Table>`__ partitioniert. Eine Beispiel-Datei ist auf dem Server unter `/var/linbo/examples/start.conf.ubuntu-efi <https://github.com/linuxmuster/linuxmuster-linbo/blob/2.3.0-8/var/examples/start.conf.ubuntu-efi>`__ abgelegt. Gruppenspezifische Boot-Konfiguration Hat man das Grub-Bootmenü aktiviert, präsentiert es sich beim nächsten Start des Clients z.B. so: Hier ein Beispiel für ein System mit Windows 7. Zunächst der globale Teil: Im ersten Schritt erstellen Sie für die Rechnergruppe *win7-efi* unter */var/linbo* eine EFI-gerechte start.conf-Datei für eine neue Rechnergruppe *win7-efi*. Kopieren Sie dazu einfach die Beispiel-Datei *start.conf.win7-efi* nach */var/linbo* (als Benutzer root auf dem Server): Installieren Sie nun Windows 7 mit Hilfe des Installationsdatenträgers wie gewohnt. Wählen Sie dazu zu Beginn der Installation die richtige Partition für die Installation aus (im Beispiel ist es die dritte Partition). Gegebenenfalls muss sie formatiert werden. Ist der Rechner eingerichtet, erstellen Sie mit **LINBO** ein Image, das Sie wie gewohnt auf weitere Rechner derselben Gruppe ausrollen können. Ist die start.conf-Datei erstellt, nehmen Sie den Rechner über den Workstations-Import in die Gruppe *win7-efi* auf. Kernel 4.2.0 mit aktuellen Hardwaretreibern. Linux-Clients mit UEFI-Boot einrichten Minimierte Hardwareprobleme, da nun vor dem Betriebssystemstart immer ein Reboot erfolgt. Mit dem Wert für `gfxpayload <http://www.gnu.org/software/grub/manual/grub.html#gfxpayload>`__ lassen sich Auflösung und Farbtiefe anpassen. Multiboot-Systeme mit UEFI Nach dem Upgrade sollten alle Clients wie gewohnt weiter funktionieren. Die Bildschirmausgabe beim Bootvorgang ist leicht verändert und vor dem Betriebssystemstart aus der Linbo-Oberfläche heraus wird nun immer ein Neustart initiiert. Nach dem globalen Teil folgen die Menüeinträge für **LINBO** und die Betriebssysteme (je einer für Start, Sync und Neu). Neueinrichten des Clients Neuerung bei lokal gebooteten Clients: Wird beim Linbo-Start eine neue Version erkannt, wird diese automatisch im Cache installiert. Danach erfolgt ein automatischer Reboot, damit die neue Version sofort aktiv wird. Analog verfährt Linbo, wenn eine geänderte Grubkonfigurationsdatei für die Gruppe vorliegt. Innovations in linuxmuster-linbo 2.3.0 Partitionierung im GPT-Modus auf EFI-Systemen. Passen Sie die Partitionsgrößen in der start.conf-Datei nach Ihren Bedürfnissen an. Sie können Einheiten für die Größen angeben (M für Megabyte, G für Gigabyte, T für Terabyte): Pflegt man eigene Anpassungen in die Datei ein, sollte man noch die Zeile ``### managed by linuxmuster.net ###`` entfernen, damit die Änderungen beim Workstationsimport nicht wieder überschrieben werden. Schalten Sie danach den vorbereiteten Rechner ein, wird **LINBO** die Festplatte gemäß dem in der start.conf-Datei definierten Partitionsschema neu partionieren und anschließend wieder herunterfahren. Schließlich folgt der Menü-Eintrag (Nr. 3) für Neu+Start: Um das Boot-Menü zu aktivieren, setzt man einfach den `Timeout <http://www.gnu.org/software/grub/manual/grub.html#timeout>`__-Wert hoch. Nach Ablauf der angegebenen Sekunden wird der `Default <http://www.gnu.org/software/grub/manual/grub.html#default>`__-Eintrag gestartet. Schlägt dies fehl, wird versucht den `Fallback <http://www.gnu.org/software/grub/manual/grub.html#fallback>`__-Eintrag zu starten. Umstellung des lokalen und PXE-Bootsystems auf Grub 2. Unterstützung für Grub-Themes. Unterstützung von 64bit-Hardware. Unterstützung von UEFI-Boot-Clients. Vereinfachte Boot-Konfiguration in nur noch einer Grub-Konfigurationsdatei für lokalen und Netzwerkboot. Vorgehensweise bei der Installation von Windows mit UEFI Vorkonfigurierte Grub-Bootmenüs können einfach aktiviert und angepasst werden. Windows-Clients mit UEFI-Boot einrichten linuxmuster-linbo ab Version 2.3.0 verwendet `Grub <http://www.gnu.org/software/grub/manual/>`__ als Bootloader für Netzwerkboot und lokalen Boot. 