��                        �  �   �  J   x  �   �  B   l  �   �  B   ?  �   �  s      !   �  ?   �     �  �     V   �  X   �     Q  0   q  Z   �  b   �  �   `  k   �  =   S	  �   �	  �   S
     �
  	   �
  8   �
  N   7  �   �  �  5  {   �  I   a  �   �  ?   4  v   t  <   �  p   (  Z   �  $   �  A        [  q   k  H   �  M   &     t  $   �  Q   �  S     i   V  N   �  /     �   ?  g   �     A  	   U  0   _  B   �  �   �   Alternativ können Sie, sofern Sie die VM „lmn62.xoa“ importiert haben, die Bedienung Plattformunabhängig im Webbrowser durchführen. Für Linuxrechner gibt es einen Clone von XenCenter namens OpenXenManager. Für die Bedienung stehen Ihnen mehrere Möglichkeiten zur Verfügung. Sofern Sie einen Windows-Rechner im Netzwerk haben, können Sie das Programm XenCenter verwenden. Geben Sie die IP-Adresse ``10.16.1.10`` und die Benutzerdaten ein. Klicken Sie auf ``Add New Server`` und geben die IP-Adresse sowie den Benutzernamen root und das Passwort ein. Bestätigen Sie mit ``Connect``. Klicken Sie auf das Kachelsymbol rechts oben und wählen Settings. Klicken Sie auf „XenCenter installer“ und speichern die Datei bzw. führen diese direkt aus. Folgen Sie dem Assistenten um das Programm zu  installieren. Klicken Sie nun auf eine VM aus der Liste und wechseln auf den Reiter ``Console``. Sie können nun die VM bedienen. Möglichkeiten der Administration Nach der Installation starten Sie OpenXenmanager mit dem Befehl OpenXen Manager Schreiben Sie den Befehl ``apt-get install netzint-xenmanager`` in die Konsole und drücken ``Enter``. Bestätigen Sie die Abfrage fortzufahren mit ``Y``. Schreiben Sie den Befehl ``apt-get update`` in die Konsole und drücken Sie ``Enter``. Schreiben Sie folgende Befehle in die Konsole und bestätigen Sie jeweils mit ``Enter``: Schreiben Sie nun in die Zeile: Sie können nun die Virtuelle Maschine bedienen. Sie sehen nun die Verwaltungsoberfläche mit der Sie den XenServer administrieren können. Starten Sie das Programm und klicken mit der rechten Maustaste auf XenCenter. Wählen Sie ``Add``. Tragen Sie links die IP-Adresse ``10.16.1.10`` ein und das Passwort, das Sie vergeben haben. Klicken Sie zum Übernehmen auf ``Save``. Um OpenXen Manager zu verwenden müssen Sie zunächst das Paket installieren. Gehen Sie dazu wie folgt vor. Um XOA nutzen zu können, muss die lmn62.xoa importiert sein! Verlassen Sie den Editor in dem Sie ``Strg+x`` drücken. Sie werden gefragt ob Sie die Änderungen speichern wollen. Drücken Sie ``Y`` und bestätigen den Speicherort/Dateinamen mit ``Enter``. Wenn Sie mit der Maus über eine VM fahren erscheinen direkt einige Schaltflächen. Klicken Sie auf VM Console um eine Maschine zu bedienen. Xen Orchestra (XOA) XenCenter Öffnen Sie ein Terminal und geben folgenden Befehl ein: Öffnen Sie einen Webbrowser und wechseln auf die Seite ``http://10.16.1.10``. Öffnen Sie einen Webbrowser und wechseln auf die Seite ``http://10.16.1.4``. Geben Sie den User ``admin@admin.net`` mit dem Passwort ``admin`` ein und klicken Sie auf Login. Project-Id-Version: linuxmuster.net 6.2
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
 Alternatively, if you have the VM "lmn62.xoa" imported, you can manage the XenServer platform independent from web browser. For Linux computers, there is a clone of XenCenter called OpenXenManager. For the operation, you have several options available. If you have a Windows computer in the network, you can use the program XenCenter. Enter the IP address ``10.16.1.10`` and the user data for root. Click on ``Add New Server`` and enter the IP address and the username root and the password. Confirm with ``Connect``. Click on the tile icon on the top right and select Settings. Click "XenCenter installer" and save the file and execute it directly. Follow the wizard to install the program. Now click on a VM from the list and switch to the tab ``Console``. You can now use the VM. Management Options for the XenServer After installation, you can start OpenXenmanager with the command OpenXen Manager Enter the command ``apt-get install netzint-xenmanager`` in the console and press ``Enter``. Continue with ``Y``. Enter the command ``apt-get update`` in the console and press ``Enter``. Enter the following commands in the console and confirm each with `` Enter``: Now write in the line: You can now use the Virtual Machine. Now you can see the management interface that allows you to manage the XenServer. Run the program and click with the right mouse button on XenCenter. Select ``Add``. Enter IP address ``10.16.1.10`` and the root password that you have assigned. Click to apply to ``Save``. To use OpenXen Manager you must first install the package. Proceed as follows. To use XOA the VM "lmn62.xoa" must be imported! Exit the editor with ``Ctrl+x``. You will be asked whether you want to save the changes. Press ``Y`` and confirm the location / filenames with ``Enter``. If you move your mouse over a VM some buttons appear directly. Click "VM Console" to operate a machine. Xen Orchestra (XOA) XenCenter Open a terminal and enter the following command: Open a web browser and navigate to the page ``http://10.16.1.10``. Open a web browser and navigate to the page ``http://10.16.1.4``. Enter the user ``admin@admin.net`` with the password ``admin`` and click on Login. 