��    /      �                6     2   D  �   w  �   5  >   	  8   H  a   �  f   �     J  ^   f     �     �  r   �  s   j  L   �  �   +  N   �  ?   �  �   ?	  �   �	  �   t
  G   n  b   �  �     c   �      (  '   I  M   q  �   �  D   s  _   �  z     M   �  �   �  '   x  =   �  9   �  [     V   t  �   �  d   \  I   �  �     L   �     �  _   �  �  S  3     (   7  �   `  �   �  3   �  *   �  K     C   `     �  G   �     �       W   -  U   �  C   �  t     E   �  4   �  t     �   �  �     .   �  M     �   Z  ?   �       #   8  >   \  �   �  -   G  I   u  [   �  F      ~   b   &   �   3   !  .   <!  D   k!  8   �!  f   �!  R   P"  2   �"  f   �"  <   =#     z#  P   �#   Akzeptieren Sie die Lizenzbedingungen mit Accept EULA. Bestätigen Sie den erfolgreichen Test mit ``Ok``. Das System fährt herunter und startet danach wieder. Die VMs, die Sie importiert haben, werden - sofern entsprechend konfiguriert - direkt gestartet und sind bereit für die Konfiguration. Der Hypervisor kann von der Projekthomepage www.xenserver.org heruntergeladen werden. Diese Anleitung bezieht sich auf die Version 7.0. Unter älteren Versionen können die Xen-VMs lmn62 nicht importiert werden. Die ISO-Datei muss heruntergeladen und auf CD gebrannt werden. Entnehmen Sie nun die CD und bestätigen Sie mit ``Ok``. Geben Sie den Benutzer root an und das Passwort das Sie während der Installation vergeben haben. Geben Sie in der Konsole den Befehl ``linuxmuster-hv-setup --first`` ein und bestätigen Sie mit Enter Herunterladen von XenServer Hier können Sie das Installationsmedium wählen. Wir verwenden den lokalen Datenträger (CD). Installation XenServer Installieren von XenServer Legen Sie nun die CD „linuxmuster-SupplementalPack“ erneut in das Laufwerk ein und bestätigen Sie mit ``Ok``. Legen Sie nun die CD „linuxmuster-SupplementalPack“ in das Laufwerk und bestätigen Sie die Meldung mit ``Ok``. Nach dem Setup erscheint diese Konsole und der Server kann verwaltet werden. Nach der Installation werden Sie wieder aufgefordert weitere CDs einzulegen. Wählen Sie ``Skip`` und bestätigen Sie mit ``Enter``. Nach erfolgreicher Installation können Sie mit ``Ok`` den Server neu starten. Sie können nun das System mit der Auswahl ``Yes`` neu starten. Sie werden nun der Reihe nach abgefragt welche VMs Sie importieren wollen. Wählen Sie jeweils ``Yes`` bzw. ``No`` und bestätigen mit ``Enter``. Sie werden nun der Reihe nach abgefragt welche VMs automatisch gestartet werden sollen. Wählen Sie jeweils ``Yes`` bzw. ``No`` und bestätigen Sie mit ``Enter``. Sie werden nun gefragt ob Sie die Autostartfunktion nutzen wollen. Wenn Sie diese Funktion aktivieren können im Folgeschritt VMs ausgewählt werden, die beim Start des XenServers automatisch gestartet werden sollen. Wählen Sie ``Yes`` oder ``No``. Sofern genügend Netzwerkkarten vorhanden sind erscheint diese Meldung: Sofern „no problems were found“ angezeigt wird können Sie die Meldung mit ``Ok`` bestätigen. Sollten Sie einen Zeitserver betrieben, können Sie diesen angeben. Wir stellen die Zeit manuell ein. Wählen Sie „Manual time entry“ und  bestätigen Sie mit ``Ok``. Sollten Sie zusätzliche Treiber benötigen können Sie diese nun laden in dem Sie ``F9`` drücken. Starten Sie den Test mit ``Ok``. Starten Sie die Installation mit ``Ok`` Starten Sie nun die Installation mit der Schaltfläche ``Install XenServer``. Stecken Sie alle Netzwerkkabel außer das Netzwerkkabel GREEN (internes Schulnetz) aus. Es muss eine Verbindung zwischen Switch und Server stehen. Bestätigen Sie dann mit ``Ok``. Stellen Sie die korrekte Uhrzeit ein und bestätigen Sie mit ``Ok``. Tragen Sie den gewünschten Hostnamen und die DNS-Server ``10.16.1.1`` und ``10.16.1.254`` ein. Tragen Sie hier Ihr gewünschtes root-Passwort ein. Dieses wird später benötigt um sich mit dem Hypervisor zu verbinden. Verbinden Sie nun das Netzwerk BLUE mit dem gewünschten Interface am Server. Verbinden Sie nun die Netzwerkkarte RED mit Ihrem Modem oder Switch für das Netz RED. Es wird die betroffene Netzwerkkarte erkannt und  konfiguriert. Von der CD booten und dem Setup folgen: Wählen Sie Ihr Tastaturlayout. Wir verwenden ``[querz] de``. Wählen Sie Ihre Zeitzone aus und bestätigen mit ``Ok``. Wählen Sie auf dem XenServer den Punkt ``Local Command Shell`` und drücken Sie ``Enter``. Wählen Sie bei der Abfrage ``Yes`` um die NI-XenServer-Tools installieren zu können. Wählen Sie den Datenträger, der verwendet werden soll und setzen Sie den Haken bei „Enable thin provisioning“. Bestätigen Sie mit ``Ok``. Wählen Sie nun die Netzwerkkarte aus, an der später das grüne Netzwerk (GREEN) angeschlossen ist. Wählen Sie nun die Schaltfläche ``Use`` und bestätigen Sie mit ``Ok``. Wählen Sie „Static configuration“ und tragen Sie die Adresse aus dem Screenshot ein. Bestätigen Sie die Eingabe mit ``Ok``. Wählen Sie „Verify installation source“ und bestätigen Sie mit ``Ok``. XenServer initialisieren „linuxmuster-hv-tools“ sollten bereits ausgewählt sein. Prüfen Sie die CD mit ``Verify``. Project-Id-Version: linuxmuster.net 6.2
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
 Accept the license conditions with ``Accept EULA``. Confirm the successful test with ``Ok``. The system shuts down and starts thereafter. The VMs that you have imported will start directly - if accordingly configured - and are ready for configuration. The hypervisor can be downloaded from the project website www.xenserver.org. This manual refers to the version 7.0. In older versions of XenServer the VMs lmn62 can not be imported. The ISO file must be downloaded and burned to a CD. Now remove the CD and confirm with ``Ok``. Enter the user root and the password you have assigned during installation. Enter the command ``linuxmuster-hv-setup --first`` and press Enter. Download XenServer Here you can choose the installation media. We use the local disk (CD). Installation XenServer Installation XenServer Now insert the CD "linuxmuster-SupplementalPack" again into the drive and press ``Ok``. Now insert the CD "linuxmuster-SupplementalPack" and confirm the message with ``OK``. After the setup a console appears where you can managed the server. After installation, you will be prompted to insert additional CDs again. Select ``Skip`` and confirm with ``Enter``. After successful installation, you can reboot the server with ``Ok``. You can now restart the system by selecting ``Yes``. You will now be asked which VMs you want to import. Select for each VM ``Yes`` or ``No`` and confirm with ``Enter``. You will now be called one after another which VMs should start automatically. Select each ``Yes`` or ``No`` and confirm with ``Enter``. You will be asked whether you want to use the Autostart function. If you enable this feature you can select VMs to be automatically started when the XenServer in the following step. Select ``Yes`` or ``No``. If there are enough NICs this message appears: If "no problems were found" appears, you can confirm the message with ``OK``. If you operate a time server, you can specify this. We set the time manually. Select "Manual time entry" and confirm with ``Ok``. If you need additional drivers you can load by pressing ``F9``. Start the test with ``Ok``. Start the installation with ``Ok``. Now start the installation by selecting ``Install XenServer``. Disconnect all network cables except the GREEN network cable (internal school network). There must be a connection between the switch and server. Then confirm with ``Ok``. Set the correct time and confirm with ``Ok``. Enter the host name and the DNS server ``10.16.1.1`` and ``10.16.1.254``. Enter your desired root password. This will be needed later to connect with the hypervisor. Now connect the BLUE network with the desired interface at the server. Now connect the RED network card with your modem or switch for the RED network. The affected NIC is recognized and configured. Boot from the CD and follow the setup: Select your keyboard layout. We use ``[querz] de``. Select your time zone and confirm with ``Ok``. On the XenServer select ``Local Command Shell`` and press ``Enter``. Select ``Yes`` to be able to install NI XenServer Tools. Select the disk to be used and set the check mark for "Enable thin provisioning". Confirm with ``Ok``. Now select the network card, that is connected to the green network (GREEN) later. Now select button ``Use`` and confirm with ``Ok``. Select "Static configuration" and enter the address of the screenshot. Confirm your entry with ``Ok``. Select "Verify installation source" and confirm with ``Ok``. Initialize XenServer "linuxmuster-hv-tools" should already be selected. Check the CD with ``Verify``. 