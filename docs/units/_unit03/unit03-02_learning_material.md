---
title: Lernmaterialien
toc: true
header:
  image: /assets/images/02-splash.jpg
  image_description: "Blick ins Lahntal mit Grünlandwirtschaft, Baustelle für Stromtrassen und Regenbogen."
  caption: "Foto: T. Nauss / CC0"

---

### ROH-SAMMLUNG AUS ALTEN READERN
<!--
Vorlesung:

* Datentypen: Repräsentation als Punkt, Linie, Fläche
* Höhenmodell, was ist das und wie zeichnet man es (wurde letztes Jahr im Tutorium als recht schwierig empfunden)
-->

## Raum in geographischen Informationssystemen

Der Raum in GI-Systemen wird in Anlehnung an die Mathematik und Physik als dreidimensionaler euklidischer Raum verstanden. Aus dem Mathematikunterricht kennen wir die euklidische Ebene (mit 2 Dimensionen) und den euklidischen Raum (mit 3 Dimensionen). Am einfachsten kann der euklidische Raum mit Hilfe eines kartesischen Koordinatensystems beschrieben werden, in dem die Koordinaten entlang senkrecht aufeinander stehender Achsen abgetragen sind (vgl. Abb. 02-1)

<html>
 <a  href="http://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Cartesian-coordinate-system.svg/354px-Cartesian-coordinate-system.svg.png" title=""><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Cartesian-coordinate-system.svg/354px-Cartesian-coordinate-system.svg.png" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>
*Abbildung 02-01: Ausschnitt aus einem zweidimensionalen kartesischen Koordinatensystem mit 3 eingetragenen Punkten in Koordinatenschreibweise (Bolino 2008)*

<html>
 <a  href="http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/3D_coordinate_system.svg/487px-3D_coordinate_system.svg.png" title=""><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/3D_coordinate_system.svg/487px-3D_coordinate_system.svg.png" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>
*Abbildung 02-2: Allgemeine Abbildung eines dreidimensionales kartesischen Koordinatensystem mit euklidischen Ebenen durch den Ursprungspunkt (Sakurambo 2007)*

### Die Raumrichtungen

Mit Hilfe einer Koordinate (x- und y-Wert) kann im zweidimensionalen Raum die Position eines Punktes eindeutig festgelegt werden. In der Regel spielt auch die Höhe des Punktes, im Sinne von z. B. der Höhe über dem Meeresspiegel oder der Höhe über der Erdoberfläche, eine Rolle. Hierfür muss folglich auch die dritte Raumdimension (z-Wert) berücksichtigt werden (vgl. Abb. 02-2).

Wenn ein Geoobjekt durch einen Punkt repräsentiert wird, dann ist für eine eindeutige Verortung ein Punkt (x, y, z) im dreidimensionalen Raum ausreichend. Oft haben die in Karten oder GI-Systemen repräsentierten Geoobjekte aber auch selbst eine mehrdimensionale Ausbildung. Dabei versteht man unter der Dimension eines Geoobjektes die voneinander unabhängigen Raumrichtungen, die zur Repräsentation des Geoobjekts verwendet werden (vgl. Abb. 02-3). Diese korrespondieren mit den geometrischen Eigenschaften von Punkten, Strecken, Flächen und Körpern in einem kartesischen Koordinatensystem:
  * 0D Geoobjekte: Punkte (Orte); keine Länge und Fläche (z.B. Messstation, Bohrpunkt)
  * 1D Geoobjekte: Strecken; definiert durch eine Länge aber keine Fläche (Gewässerlängsprofil, vertikales Bodenprofil)
  * 2D Geoobjekte: Flächen; definieren einen geschlossenen Linienzug (Sportplatz,  Stadtgebiet, Einzugsgebiet)
  * 3D Geoobjekte: Körper; werden z. B. als Volumen-Körper (Solide) oder Grenzflächen-Körper (Polyeder) definiert (Grundwasserkörper, Atmosphäre).

<html>
<a href="https://www.flickr.com/photos/environmentalinformatics-marburg/13970512442" title="02-3 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7087/13970512442_289d700fb6.jpg" width="500" height="122" alt="02-3"></a>
</html>

*Abbildung 02-03: Dimensionalität von Geoobjekten (verändert nach Bartelme 2005)*

Neben den räumlichen Merkmalen sind Geoobjekte durch weitere Eigenschaften charakterisiert (z. B. kann einem Fluss ein Name zugeordnet sein, einer Stadt die Einwohnerzahl etc.). Diese, nicht die räumliche Geometrie betreffenden Merkmale eines Geoobjektes, werden als Attribute bezeichnet und bilden die thematische Dimension. Die zeitliche Veränderung von Geoobjekten oder Systemen wird in der Regel 4. Dimension genannt.

### Die Lage im Raum

Für die vollständige und korrekte Repräsentation von Geoobjekten benötigen wir neben dem Ort (Geometrie) und der thematischen Dimension auch noch die relative Lage der Objekte zueinander. Die relative Lage von Geoobjekten zueinander wird als Topologie bezeichnet. Sie zu bestimmen erscheint zunächst einfach. Wir können die geometrische Situation nutzen, um Sie zu berechnen. Schwieriger ist es, wenn diese Punkte exakt die gleichen Raumkoordinaten aufweisen und sich nur in der Höhenangabe (Dimensionalität) unterscheiden, wie etwa in einem Gebäudeplan die Ausgänge eines Aufzugs oder wenn es nicht auf die exakte Lage zueinander ankommt, sondern auf Information was ist benachbart. Ein bekanntes Praxisbeispiel für eine topologische Betrachtungsweise ist ein Liniennetzplan der in Abbildung 02-4 die Buslinien und Haltestellen für Marburg dargestellt.

<object data="https://www.stadtwerke-marburg.de/fileadmin/user_upload/Seiteninhalte/Verkehr/Haltestellenpositionen/Liniennetzplan.pdf" type="application/pdf" width="700px" height="500px">
    <embed src="https://www.stadtwerke-marburg.de/fileadmin/user_upload/Seiteninhalte/Verkehr/Haltestellenpositionen/Liniennetzplan.pdf">
        <p>This browser does not support PDFs. Please download the PDF to view it: <a href="http://yoursite.com/the.pdf">Download PDF</a>.</p>
    </embed>
</object>

*Abbildung 02-04: Liniennetzplan der Stadtwerke Marburg. Nur die wenigsten Menschen würden einen Netzfahrplan nutzen, um etwa eine Stadtbesichtigung zu Fuß zu planen, oder aber die geometrisch exakte Lage der Haltestellen zueinander zu ermitteln (Stadtwerke Marburg 2013)*

### Diskrete und kontinuierliche Objekte in GI-Systemen

Diskrete Geobjekte sind durch eine klare räumliche Abgrenzbarkeit gekennzeichnet, während räumlich kontinuierliche Ausprägungen zunächst keine eindeutig objektbezogene räumliche Abgrenzbarkeit aufweisen. Diese Regel ist abhängig von der Beobachtungs- oder Interessenskala. Hinzu kommt, dass die binäre Logik computergerechter Datenverarbeitung eine Begrenzung der Informationen notwendig macht. In der Praxis der Geoinformationssysteme werden daher auch kontinuierliche Felder wie räumlich abgegrenzte Objekte behandelt also – unter Berücksichtigung einer für die Fragestellung geeigneten Skala – in diskrete Raumeinheiten aufgeteilt. Der wesentliche Unterschied zu dem Konzept der diskreten Objekte im leeren Raum ist, dass diese mit bekannter Position in einem ansonsten leeren Raum existieren, während in diskrete Objekte zerlegte Kontinua diesen Raum lückenlos und überschneidungsfrei mit ihren Eigenschaften abbilden und beschreiben.

Trotz der bisherigen Erläuterungen ist die Beantwortung der Frage „Was sind geographische Daten bzw. Geodaten?“ nicht richtig greifbar. Bislang erscheint die Abstraktion willkürlich und nicht nachvollziehbar zu sein.

## Geographische Daten

mögliches Video:
* Straßenumfrage "Was sind Geodaten?"

*broken Link*

<!--
http://www.youtube.com/v/zX2EcvzsmcE?.swf?400×333
-->

### Was sind geographische Daten?

Trotz der bisherigen Erläuterungen ist die Beantwortung der Frage „Was sind geographische oder Geodaten?“ nicht ganz einfach. Auch wenn die im Film gezeigte Umfrage kaum repräsentativ sein dürfte, scheinen Laien nur eine schwach ausgeprägte Vorstellung von dem Begriff Geodatum zu haben.

Geodaten oder geographische Daten (singl. Datum) liefern räumlich fixierte, maschinenlesbare Konstrukte aus Zeichen, Bildern oder Funktionen die mit entsprechenden Interpretationsregeln zu Informationen werden. Da Daten Interpretationsvorschriften benötigen, um zu Informationen zu werden, müssen wir dieses Wissen nur noch mit dem Ziel, eine geographische Repräsentation der Welt durchzuführen, verbinden.

Die zentrale Fragestellung lautet: Was ist spezifisch geographisch und wie können wir diese geographische Ableitungen der Wirklichkeit durchführen? Ein typisches Beispiel für Geodaten ist in folgender Aussage kodiert:

“Die Temperatur am Havanna Airport betrug am Donnerstag, den 17.09.2009 um 08:00 lokaler Zeit 23.0°C. Die Koordinaten lauten: 22° 59' 21'' N, 82° 24' 33'' W, 64 m ü. MSL.”

Analysieren wir diese Aussage so finden wir alle wesentlichen Elemente der geographischen Repräsentation eines Echtweltobjekts. Die Aussage verbindet Raum (Koordinaten und Höhe) mit Zeit (Datum/Zeitangabe) und der Eigenschaft bzw. dem Attribut der Lufttemperatur. Zusätzlich sind dem derart festgelegten Ort weitere Eigenschaften zugeordnet: Havanna und Airport. Aus dieser Aussage kann schließlich folgendes geographisches Datum gebildet werden:

22° 59' 21'' N; 82° 24' 33'' W; 64 m ü. MSL; 8.00 Uhr LT; Havanna Airport; 23.0 °C

Geographische Daten verbinden somit räumlich eindeutig verortete Objekte mit mindestens einer Merkmalsausprägung. Diese „Daten-Primitive“ können natürlich beliebig komplex werden und darüber hinaus direkt oder auch indirekt zueinander in Beziehung gesetzt bzw. voneinander abgeleitet werden. Auch scheinbar nicht geographische Aussagen wie:

„Der K2 hat den schwersten Normalweg eines 8000er Gipfels“

können in ein geographisches Datum überführt werden. Hierzu sind weitere Kenntnisse bzw. Dekodierungsvorschriften notwendig. So muss man wissen dass K2 der international bekanntere Namen des Lambha Pahar, des zweithöchsten Berges der Erde ist. Weiterhin muss bekannt sein, welche geographischen Koordinaten seinen Gipfel repräsentieren und dass „Normalweg“ im Alpinistenjargon der „am häufigsten begangene und in der Regel einfachste Aufstieg“ bedeutet. Aus dieser Interpretation wird somit das geographische Datum:

35° 53' 0'' N; 76° 31' 0'' O; Lambha Pahar; K2; >8000 m ü. MSL; schwerster Normalweg 8000+

## Merkmale geographischer Daten

Anhand der bereits eingeführten Beispiele von Geodaten (Temperatur am Havann Airport, Lambha Pahar Normalweg) wird deutlich, dass die Attribute von Raumobjekten nahezu beliebige Ausprägungen aufweisen können. Manche dieser Ausprägungen können physikalischer Natur sein oder beschreiben soziologische Aspekte, verweisen auf Eigentumsrechte, sind fortlaufende Nummern etc.. Sie können Orte identifizieren (z.B. Adressen) oder Räume (z.b. manche Postleitzahlen). Sie können Maßzahlen sein (z.B. Einwohner/Fläche) oder kategoriale Ausprägungen haben (beliebte Kneipe, unbeliebte Kneipe). Da es in den Wissenschaften üblich ist mit Werten, Attributen und ihren Ausprägungen zu arbeiten, sind diese auch im Bereich Geographischer Informationssysteme bekannt. Die Skalenniveaus sind bereits aus der Statistik bekannt und werden Nominal-, Ordinal- und Kardinalskala genannt. Sind Merkmalsausprägungen zeitabhängig werden sie als zyklisch bezeichnet.

So einfach Geodaten erzeugt werden können, begegnen wir einer bekannten Problematik. Es ist zwar eindrucksvoll die Temperatur am Flughafen von Havanna um 8.00 Uhr lokaler Zeit am 17.09.2009 als Repräsentation des Wetters verfügbar zu haben. Doch wie gut beschreibt diese Repräsentation des Wetters den Durchzug eines Hurrikans um 8.15 Uhr des gleichen Tages?

Geodaten sind Merkmalsausprägungen, die hinsichtlich eines spezifischen Zwecks, Geoobjekten (diskrete Gegenstände oder kontinuierliche Raumeigenschaften) zielführend charakterisieren. Geoobjekte sind immer Repräsentationen real existierender Objekte, die durch eine Position im Raum direkt (z.B. durch Koordinaten = Geometrie) oder indirekt (z.B. durch Beziehungen = Topologie) referenzierbar (=verortet) sind. Sie sind immer formale Kodierungen der Eigenschaften und der zugehörigen Interpretation (=Informationen) dieser echten Objekte (vgl. Abb. 01-08).
{: .notice--info}

<html>
 <a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13898323961" title="01-08-Geoobjekt-schema1 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7419/13898323961_21d8beca23_n.jpg" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>

*Abbildung 01-08: Schematische Strukturierung eines Geoobjekts in räumliche, dynamische und inhaltliche Aspekte (GIS.MA 2009)*

## Raumreferenzierung

### Die Vermessung der Welt

Am Anfang dieser Lerneinheit, ist das kartesische Koordinatensystem zur Abbildung des euklidischen Raums eingeführt worden. Zentrale Aufgabe eines Koordinatensystems ist die räumlich reproduzierbare Verortung diskreter und/oder kontinuierlicher Elemente geographischer Information. Über die unmittelbaren Raumdimensionen hinausgehende Eigenschaften können den Geoobjekten als Attribute zugeordnet werden. Um die Realwelt mit Hilfe der in [Lerneinheit "02 - Räumliche Modellierung"]({{ site.baseurl }}{% link _unit02/unit02-02_learning_material.md %}) vorgestellten Konzepte abstrahieren zu können, muss unsere GIS-Software grundlegende Methoden zur Verfügung stellen, die das geographische Datentripel Zeit, Ort und Attribut konsistent nutzbar machen (und genau das tut die Software glücklicherweise auch).

Die aktuelle Lerneinheit ist für ein schrittweises Erarbeiten dieser komplexen Materie in mehrere Abschnitte gegliedert. Zunächst werden die Prinzipien der räumlichen Referenzierung (Georeferenzierung) mit Hilfe von Ortsnamen, die lineare Referenzierung und das exakte zweidimensionale Verorten in einem Katastersystem besprochen. Im Anschluss werden die wichtigsten geodätischen bzw. kartographischen Methoden der Raumzuweisung und -darstellung wiederholt und in den Kontext von GIS gestellt.

### Der Ort

Ohne eine exakte Verortung beliebiger Orte ist ein GIS weitgehend sinnlos, da wir dann nicht in der Lage sind räumlich zu messen, Eigenschaften räumlich zu vergleichen oder auch nur die Merkmale spezifischer Objekte geographisch darzustellen (Abb. 03-02). Für den sinnvollen Gebrauch von GI-Systemen ist die korrekte Verortung der Geoobjekte -oder anders ausgedrückt- die Georeferenzierung eine zentrale Technik. Es gibt eine Reihe von ähnlichen Ausdrücken für diesen Vorgang. Wir sprechen vom Georeferenzieren, Geolozieren, Verorten oder ganz modern vom Geotagging. Allen Begriffen ist gemeinsam, dass Merkmalsausprägungen an geographisch identifizierbare und kartographisch abbildbare Positionen gebunden werden.

*defekte Abbildung*

<!--
<html>
<a href="http://www.astrofotos.de/images/hier.gif" title="02-3 by Environmental Informatics Marburg, on Flickr"><img src="http://www.astrofotos.de/images/hier.gif" width="500" height="122" alt="02-3"></a>
</html>
*Abbildung 03-02: Wo bin ich – genau hier. In GI-Systemen benötigen Orte im Raum, einen externen Bezug und benötigt hierzu Koordinaten (Astro-AG)*
-->


### Namen und Adressen

Orte durch Benennung und Beschreibung identifizieren und lokalisieren zu können gehört zu den ältesten Kulturtechniken der Menschheit. Wir haben gelernt, dass geographische Informationen sich von anderen Informationstypen durch das Benennen eine räumlichen Komponente unterscheiden (Abb. 03-03).

*defekte Abbildung*

<!--
{{    http://geoinformatik.lehrewelt.de/wp-content/uploads//bsc-geoinformatik/03-raumreferenz/Segnaleladino.jpg}}

//Abbildung 03-03: Orte haben eine absolute Lage im Raum. Die Verortung mit Namen nutzt kognitive Fähigkeiten, Wissen und Interpretation der Betrachtenden. Unterschiedliche Ortsnamen zeigen die Wandelbarkeit nicht nur in geschichtlicher Hinsicht sondern auch aktuell. Dreisprachige Straßenbeschilderung im Grödnertal (Südtirol) in Ladinisch, Deutsch und Italienisch. (Behrendes 2010)//
-->

 Die Kombination von Namen und Ziffern, Deutschhaustrasse 10 in 35032 Marburg ist die postalische Kodierung für das Gebäude des Fachbereichs Geographie in Marburg. Auch wenn nicht alle Menschen eine auf diese Weise verschlüsselte Raumposition entschlüsseln können, gibt es ein weltweites Netz von Experten, die mit Hilfe dieser Kodierung einen Brief des Reisebüro Maluti Travel & Tours in Maseru, Lesotho zum Deutschen Haus in Marburg transportieren können. Umgekehrt gibt die Kodierung Maluti Travel & Tours, POB 14889, 0100 LNDL Building, Kingsway, Maseru Lesotho die Raumposition dieses Reisebüros an. Vielleicht kennen Sie aus Interesse oder Zufall die geographisch kodierte Position des Deutschhauses in Marburg, die Positionsangaben des LNDL Building in Maseru kennen Sie jedoch mit an Sicherheit grenzender Wahrscheinlichkeit nicht. Wiederum kennt auch der Postbote sicher nicht die geographischen Koordinaten der Empfängerorte, die er tagtäglich bedient – dennoch kommt die Post (meist) zuverlässig an ihrem Bestimmungsort an.

Das räumliche Referenzierungssystem hierfür funktioniert anders als über geographische Koordinaten, nämlich über Namen. Es ist eine Kette von Namenskodierung vom Nationalstaat über die Region bis hin zum Gebäude. Wenn sich dieser Name ändert, wie beispielsweise von Karl-Marx-Stadt in Chemnitz, bleibt selbstredend der geographische Raumbezug erhalten. Natürlich gibt es Ortsnamen, die vielfach vorkommen, so z.B. London oder Neunkirchen. Eine eindeutige Referenzierung nach dem vorgestellten System ist nur dann möglich, wenn der Ortsname eindeutig durch ein übergeordnetes Zuordnungssystem identifiziert werden konnte. Die wichtigste Schlussfolgerung ist, dass in GI-Systemen zur Vermeidung von Redundanzen, Fehlern und Unsicherheiten zur Referenzierung unbedingt ein möglichst allgemeingültiges, zweckdienliches System verwendet werden sollte (deshalb hat die Thurn und Taxis Post 1853 in Deutschland Ortsnamen mit einem Zahlenschlüssel kodiert, der eine abstrakte, nachvollziehbare Identifikation der Raumposition dieser Orte möglich macht).


**Allen geographischen Informationen liegt eine eindeutige räumliche Zuordnung zugrunde.**

### Metrische Verortung

Ein System der systematischen Identifikation geographischer Orte haben wir mit den Postleitzahlen bereits kennen gelernt. Stellen wir uns nun folgenden Sachverhalt vor (Abb. 03-04):

<html><a href="https://www.flickr.com/photos/environmentalinformatics-marburg/13981635311" title="03-4 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7325/13981635311_ae1b12e0cf.jpg" width="500" height="257" alt="03-4"></a></html>

**Abbildung 03-04: Pannenort nördlich von Holtau (GIS.MA2009)**

Während der Zustellung des Briefes in Flensburg bleibt der Post-LKW auf der Bundesautobahn 7 liegen. Mit seinem mobilen Telefon steckt der Fahrer gerade im Funkloch und muss (natürlich nach Absicherung der Pannenstelle) zu Fuß zu einer Meldesäule. Auf seinem Weg läuft er an einem kleinen blauen Schild vorbei, auf dem 64,0 zu lesen ist. Angekommen an der Meldesäule gibt er seine Panne bekannt, gibt die Auskunft, dass sich das Pannenfahrzeug kurz hinter Kilometer 64,0 in Fahrtrichtung Nord hinter der Anschlussstelle Soltau befindet und die rechte Fahrspur blockiert. Wenig später hören Sie im Verkehrsfunk:


“1,5 km Stau zwischen der Anschlussstelle Soltau und der Anschlussstelle Bispingen wegen eines defekten LKW. Die rechte Fahrspur ist blockiert. Bitte fahren Sie vorsichtig”

Dieses alltägliche Beispiel verdeutlicht die Kombination aus Namen und metrischer eindimensionaler Positionsangabe als geographischem Verortungssystem. Da Sie die Autobahn unterwegs nicht verlassen können orientieren Sie sich von Ausfahrt zur Ausfahrt (Namen oder Ausfahrtskennziffer). Ihnen genügt daher die Information des Verkehrsfunks für eine ausreichend genauen Verortung des Staus.

Der Polizei oder dem Pannendienst genügt diese Angabe nicht. Sie hätten gerne z.B. zur Organisation der Bergung bzw. zur Einschätzung der Gefahren die Kilometerangabe. Die Kilometrierung ist eine metrische Ortsangabe, die nur eine Dimension benötigt, da sie auf einer eindeutig definierten Strecke angeordnet ist. Ein solches Verortungskonzept ist metrisch also quantitativ. Es misst von einem definierten Ursprung/Start die Entfernung bis zum Zielpunkt/-ort. Diese sogenannte lineare Referenzierung kann nur auf eindimensionale Geoobjekte Anwendung finden. Von diesen gibt es eine Vielzahl in unserem Alltag. Angefangen bei Autobahnen oder Gleisanlagen bis hin zu Rohr- und Versorgungsleitungen sind alle linearen, als Netzwerke ausgeprägten Strukturen linear referenzierbar.

**Lineare Referenzen sind immer topologisch korrekt und können immer in geometrisch eindimensional messbaren Entfernungen angeben werden.**

<!--

##### Was ist eine lineare Referenzierung?

Versuchen Sie diesen Zusammenhang zu rekapitulieren und verschaffen Sie sich einen Überblick über die Pannensituation bzw. die Ortslage. Navigieren Sie mit Google Earth zum [[https://drive.google.com/file/d/0B-Zk6jquLjKvUXlOX1pMbG95Sjg/edit?usp=sharing|Schauplatz]].
Betrachten Sie nun die nachfolgende Abbildung der Lininekarte der BAB 7. Sie zeigt exakt die gleichen Raum.

<html><a href="https://www.flickr.com/photos/environmentalinformatics-marburg/13961701856" title="03-5 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7106/13961701856_cdcfe3a779.jpg" width="500" height="348" alt="03-5"></a></html>

**Abbildung 03-05: Auszug der Linienkarte der BAB 7 im Bereich der Anschlussstelle Soltau. (Scholl 2009: http://www.autobahnatlas-online.de/A7.htm)**

Navigieren Sie nun zur [Linienkarte](http://www.autobahnatlas-online.de/A7.htm) der BAB 7 und analysieren die Art der metrischen Verortung. Nutzen Sie die Legende, um die Fülle an räumlich verorteter Information nachzuvollziehen.


#### Bearbeiten Sie… ####

  * Welches Datenmodell würden Sie für eine lineare Referenzierung bevorzugen?
-->


#### Geometrisch exakte maßstäbliche Raumabbildung

Im vorausgegangen Kapitel haben wir die eindimensionale metrische Referenzierung kennengelernt. Als zweidimensionale Erweiterung gibt es weltweit sogenannte Kataster. Es ist üblich, dass Kataster in Katasterplan und Katasterbuch unterschieden werden (Abb. 03-06). In Deutschland ist (wie in den meisten Ländern) die Führung und Pflege hoheitlich durch Vermessungsämter geregelt.

<html><a href="http://upload.wikimedia.org/wikipedia/commons/8/84/Bukowsko_-_mapa_katastralna_%281906%29.jpg" title="03-5 by Environmental Informatics Marburg, on Flickr"><img src="http://upload.wikimedia.org/wikipedia/commons/8/84/Bukowsko_-_mapa_katastralna_%281906%29.jpg" width="500" height="348" alt="03-5"></a></html>

**Abbildung 03-06: Historischer Katasterplan von Bukowsko, Galizien (Silarski 2009)**

Dies liegt in der Notwendigkeit eines rechtskräftigen Nachweis von Eigentumsrechten (bekanntermaßen ein heikles Thema) begründet. Kataster bestehen seit der Antike für den persönlichen Nachweis von Steuerpflicht auf das Eignen von Liegenschaften. In den Kopfsteuerverzeichnissen wird an eine Person gebunden, die Steuerpflicht, bezogen auf Vermögen oder Liegenschaften, namentlich beschrieben.

Seit der Erfindung und Durchführung der exakten Vermessung der Welt durch Carl Friedrich Gauß (1777 – 1855) werden Kataster als flächendeckende Beschreibungen aller Flurstücke eines Landes durchgeführt. Für Deutschland wurde dies rechtlich durch den Code Civil Napoleons eingeführt und vom preußischen Staat vorbildlich umgesetzt. Der Kataster ist aufgeteilt in einen beschreibenden Teil – das sogenannte Liegenschaftsbuch – und in einen graphischen Kartenteil, die Liegenschaftskarte. In Beiden werden die geometrische Lage, die baulichen Anlagen, die Liegenschaften und die Art der Nutzung und Größe beschrieben sowie die Eigentumsverhältnisse und Rechtslasten festgelegt. Die Abbildung des Katasterplans stellt einen solchen graphischen Plan exemplarisch dar. Betrachtet man diese Abbildung genauer wird das Wort Plan verständlich. Die Parzellen sind zwar geometrisch exakt abgebildet, jedoch fehlt jegliches geographisches Referenzsystem. Vielmehr kann man eine Reihe von Ziffern für jede abgebildete Fläche identifizieren. Diese Ziffern verweisen auf die zugehörigen Eintragungen im Grundbuch. Analog zur linearen Referenzierung, die eindimensionale Geoobjekte metrisch referenziert, wird bei Katastern eine zweidimensionale metrische Referenzierung vorgenommen.

**Katasterpläne sind immer topologisch korrekt und bieten immer geometrisch zweidimensional maßstäblich messbare Entfernungen und Flächen.**

<!--
##### Katasterpläne

Verdeutlichen Sie sich erneut diesen Zusammenhang, indem Sie sich das Karten- bzw. Satellitenbild des heutigen [Bukowsko](https://drive.google.com/file/d/0B-Zk6jquLjKvTHRiUW1hUFhmOFk/edit?usp=sharing) mit Google Earth anschauen. Vergleichen Sie dazu den Katasterplan von 1906.

#### Bearbeiten Sie… ####

  * Welches Datenmodell würden Sie für eine Erstellung von Katastern bevorzugen?
-->


#### Breiten und Längengrade

Die vorangegangenen Beispiele zeigen wie mühsam und fehlerbehaftet die Orientierung an Objekten und ihren Namen ist. Sie zeigen auch, dass messbare, also geometrisch maßstäbliche Referenzierungssysteme nicht notwendig geographisch lokalisierbar sein müssen. Im Kapitel [[courses:bsc:methoden-geoinformatik:lecture-notes:mg-ln-01#Raumvorstellungen/Raumvorstellungen, Daten, Informationen]] war die abstrakte Definition vom Raum und seinen Objekten bis zur Repräsentation der geographischen Informationen in spezifischen Datenobjekten Thema. Nun gilt es diese beiden Konzepte zu vereinen.

Ein leistungsstarkes System zur Referenzierung von geographischen Räumen sollte unbedingt folgende Grundeigenschaften zusammenführen:

  * Skalenunabhängige Identifikation jedes Punktes auf der Erdoberfläche
  * Messbarkeit, also mathematische Berechnungsvorschriften für alle geometrischen Operationen
  * Zuordnung aller beliebig skalierten Attribute (z.B. Name, Temperatur, Qualität)

Die Erde gleicht in erster Annäherung einer Kugel. Daher liegt es nahe, die Punkte an der Oberfläche durch Kugelkoordinaten zu bestimmen. Da die Oberfläche einer Kugel bekannt ist genügen zur Bestimmung eines Punkts die zwei Winkel für den Azimuth (geographische Länge) Lambda und den Zenit (geographische Breite ) Phi (Abb. 03-07).


<html><a href="http://minibsc.gis-ma.org/GISBScL1/de/image/kugelkoordinaten.png" title="03-5 by Environmental Informatics Marburg, on Flickr"><img src="http://minibsc.gis-ma.org/GISBScL1/de/image/kugelkoordinaten.png" width="500" height="348" alt="03-5"></a></html>
**Abbildung 03-07: Das Konzept der Kugelkoordinaten (Honina 2004)**



Mögliche Videos aus MeKo 19

* Kartenkonstruktion
* geodätisches Datum und projiziertes Koordinatensystem


Überträgt man das Konzept der Kugelkoordinaten auf die Erde, so ergeben sich eine Reihe von Problemen. Das augenscheinlichste ist die Abplattung der Erde an den Polen, die durch die Erdrotation entsteht. Für die Bestimmung des Längengrads ist die Tatsache, dass die Erde ein Rotationsellipsoid mit großen und kleinen Halbachsen ist, unerheblich. Anders sieht dies für die Bestimmung der geographische Breite aus, da sich die Halbachsen der Erde um ca. 21,4 km unterscheiden (Abb. 03-08).


<html><a href="http://upload.wikimedia.org/wikipedia/commons/archive/b/b5/20091022034620!OblateSpheroid.PNG" title="03-5 by Environmental Informatics Marburg, on Flickr"><img src="http://upload.wikimedia.org/wikipedia/commons/archive/b/b5/20091022034620!OblateSpheroid.PNG" width="500" height="348" alt="03-5"></a></html>

**Abbildung 03-08: Darstellung eines Rotationsellipsoid (AugPi 2006)**


Die Abbildung zeigt das Rotationsellipsoid der Erde mit Kreisform der Breitenkreise (in der Äquatorebene Radius der großen Halbachse A) und der Längenkreise (kleine Halbachse an den Polen B). Das resultierende Maß für die Exzentrizität von ca. 1:298 gibt die Abplattung der Erde und damit die Streckenverschiebung bei der Bestimmung sphärischer Koordinaten an. Die zentrale Problematik der exakten Bestimmung der Erdoberfläche (im Sinne einer gleichförmigen Oberfläche zur Berechnung der sphärischen Koordinaten) liegt nun in der Entscheidung begründet, welche mathematische Repräsentation eines Ellipsoids als geeignetes Modell für das reale Rotationsellipsoid der Erde verwendet wird.

Da es sich immer nur um eine Annäherung an die ideale Erdform bezogen auf eine bestimmte Erdregion handelt, ist die Eignung des gewählten Ellipsoid als Referenz (Referenzellipsoid) von außerordentlicher Bedeutung zur Berechnung der Vermessungsnetze (Koordinatensysteme) und den daraus abgeleiteten Projektionssystemen (Abb. 03-09).

<html><a href="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Geographic_coordinates_sphere.svg/609px-Geographic_coordinates_sphere.svg.png" title="03-5 by Environmental Informatics Marburg, on Flickr"><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Geographic_coordinates_sphere.svg/609px-Geographic_coordinates_sphere.svg.png" width="500" height="348" alt="03-5"></a></html>

**Abbildung 03-09: Die Bestimmung geographischer Koordinaten auf einem Rotationsellipsoid (Ttog 2006)**

##### Welches Ellipsoid ist das Richtige?

In den vergangenen 2 Jahrhunderten wurden sehr unterschiedliche Referenzellipsoide entwickelt. Vor allem um regionale oder nationale Kartenwerke genauer ausführen zu können. Nun ist die Annäherung der Erdgestalt an die geometrische Figur eines Ellipsoids vergleichsweise einfach durchzuführen. Um eine möglichst genaue Position zu erhalten werden alle eingemessenen Punkte senkrecht auf das gewählte Referenzellipsoid projiziert. Bei einer kleinräumigen Betrachtungsweise ist die erreichbare Genauigkeit völlig ausreichend. Besuchen Sie die offizielle [[http://www.epsg.org/Online-Datenbank]] für Referenzellipsoide. Navigieren Sie zum [[http://www.epsg-registry.org/EPSG Geodetic Parameter Dataset]] und suchen Sie nacheinander nach den Begriffen Bessel, Clarke, Krassowski und WGS84. Klicken Sie auf den View Link und vergleichen Sie die verfügbaren Parameter.


#### Das geodätische Datum

Bei einer kleinräumigen Betrachtungsweise ist die Genauigkeit einer auf ein Referenzellipsoid bezogenen Koordinatenbestimmung völlig ausreichend. Spannend ist, dass erst mit der Entwicklung von interkontinentalen Raketen in der ersten Hälfte des 20. Jhds. eine neue Dimension der Genauigkeit für die praktische Anwendung angestrebt wurde. In der Anwendung ist nämlich eine senkrechte Projektion auf das Ellipsoid unmöglich. Die senkrechte Projektion auf das auf Meeresniveau angenäherte Ellipsoid weicht um die sogenannte Lotabweichung von der wirklichen Senkrechten, wie sie durch ein gravitatives Schnurlot dargestellt wird, ab. Bei Vermessungen, die genauer sein sollen als etwa 0,5 Meter/1000 Meter (z.B. zur Berechnung der Ballistik von Interkontinentalraketen oder der Kontinentaldrift…), muss dieser Effekt berücksichtigt werden und die Messungen korrigieren zu können (Abb. 03-10).


<html><a href="https://www.flickr.com/photos/environmentalinformatics-marburg/14004801373" title="03-10 by Environmental Informatics Marburg, on Flickr"><img src="https://farm3.staticflickr.com/2919/14004801373_57decb7d14_o.png" width="529" height="278" alt="03-10"></a></html>

**Abb. 03-10: Differenz zwischen wahrer Lotrichtung und Ellipsoidnormale (=Lotabweichung) der zugehörigen Bezugskörper des Ellipsoids und Geoids (GIS.MA 2009)**

Das Referenzmodell für die sich räumlich (und auch zeitlich) unterschiedlich ausprägende Schwere der Erde ist ein sogenanntes Geoid. Die Abbildung zum Erdschwerefeld visualisiert stark überhöht und farblich hervorgehoben diese Schwereanomalien.

*defekte Abbildung*

<!--
{{  http://upload.wikimedia.org/wikipedia/commons/5/56/Geoids_sm.jpg  }}

//Abb. 03-11: Stark überhöhte Visualisierung des Erdschwerefelds (Geoid) (NASA 2005)//
-->

Für genaue Messungen oder möglichst exakte Kartenprojektionen müssen beide Bezugskörper, das Ellipsoid und das Geoid, berücksichtigt werden. Die Abbildung zur Schwerevariation und zu einer weiteren Alternative zeigen die konzeptuellen Probleme bei der Berücksichtigung des Geoids und des Referenzellipsoids für eine exakte Berechnung von Koordinaten. In der klassischen Vermessungstechnik wird hierzu, möglichst im Zentrum des abzubildenden Erdausschnittes, ein Referenzpunkt gesetzt (Fundamentalpunkt), der zusammen mit dem Referenzellipsoid das sogenannte geodätische Datum ergibt.

<html><a href="http://upload.wikimedia.org/wikipedia/commons/4/41/Geoundaequrp.png" title="03-10 by Environmental Informatics Marburg, on Flickr"><img src="http://upload.wikimedia.org/wikipedia/commons/4/41/Geoundaequrp.png" width="529" height="278" alt="03-10"></a></html>

**Abb. 03-12: Veranschaulichung der Schwerevariation entlang des Äquators bezogen auf eine kreisförmige Referenzfläche (schwarz) (Dandor 2006)**


<html><a href="http://upload.wikimedia.org/wikipedia/commons/7/78/Geoundnsrp.png" title="03-10 by Environmental Informatics Marburg, on Flickr"><img src="http://upload.wikimedia.org/wikipedia/commons/7/78/Geoundnsrp.png" width="529" height="278" alt="03-10"></a></html>

**Abb. 03-13: Birnenform als Näherung der Erdfigur im Vergleich zum elliptischen Querschnitt (schwarze Linie) (Dandor 2006)**


##### Das geodätische System

Seit der Satellitenvermessung mit globalen Positionierungssystemen (GPS) sind viele, unabhängige Messungen bezogen auf die reale Erdgestalt verfügbar, so dass nicht länger vom geodätischen Datum gesprochen wird sondern vom geodätischen System

Das World Geodetic System 1984 (WGS 84) ist derzeit das am meisten verwendete geodätische Referenzsystem und dient als einheitliche Grundlage für Positionsangaben auf der Erde und im erdnahen Weltraum. Geodätische Systeme sind, anders als das geodätische Datum, global konstruiert und bestehen aus dem Referenzellipsoid, dem eingemessenen Geoid, und zwölf Fundamentalstationen, über die der Bezug zur Erdkruste über zeitabhängige Koordinaten bestimmt wird.

Betrachten Sie die Abbildung zu den Referenzellipsoiden. Sie zeigt schematisch (zweidimensional) die Verschiebungen von Referenzellipsoiden bezogen auf das Geoid, also die wahre Erdoberfläche. Die Sterne markieren den Mittelpunkt des jeweiligen Körpers. Versuchen Sie sich zu verdeutlichen welche Parameter notwendig sind um diese Verschiebung durchzuführen.

*defekte Abbildung*

<!--
<html>
<a href="https://www.flickr.com/photos/environmentalinformatics-marburg/14004801273" title="03-14 by Environmental Informatics Marburg, on Flickr"><img src="https://farm3.staticflickr.com/2907/14004801273_84e8d2ce84_m.jpg" width="240" height="190" alt="03-14"></a>
</html>

**Abb. 03-14: Verschiebungen von Referenzellipsoiden bezogen auf das Geoid/wahre Erdoberfläche (GIS.MA 2009)**
—>

#### Kartenprojektionen in GI-Systemen

Die geographischen Winkel Länge und Breite referenzieren jeden Punkt auf der Oberfläche der Erde mit hoher skalierbarer Genauigkeit. Sie beziehen sich auf die wohldefinierte, dreidimensionale idealisierte Oberfläche der Erde. Diese Körpergestalt der Erde nutzt bekannte und durch Konvention festgelegte Referenzpunkte: das Königliche Observatorium von Greenwich für den Bezugsmeridian, das Schwerkraftzentrum der Erde und die Halbachsen des Referenzellipsoids der Erde als Annäherung an ihre wahre Gestalt.

Mit Hilfe dieser Parameter sind ausreichend genaue Lokalisationen aller Geoobjekte möglich. Gleiches gilt für die Analyse und Berechnung ihrer geometrischen Beziehungen. Historisch gesehen sind diese Aufgaben nicht auf einem Sphäroid durchgeführt worden sondern auf zweidimensionalen Karten die als projiziertes Abbild der Erde verwendet wurden. Auch heute besteht für sehr viele Anwendungen und Daten die Notwendigkeit eine verebnete zweidimensionale Projektionen der Erdoberfläche zu nutzen. So sind:

  * alle Ein- und Ausgabekarten zweidimensional
  * alle Rasterdatensätze (Satellitendaten, Luftbilder) zweidimensional, da quadratische Netze sich nicht verzerrungsfrei und ohne Überschneidungen oder Lücken auf eine Kugel aufbringen lassen


Eine Kartenprojektion ist nun eine mathematische Methode mit der man die gekrümmte Oberfläche der dreidimensionalen Erde auf die flache, zweidimensionale Karte überträgt. Dies erfolgt in zwei Schritten:

  - Auswahl eines geeigneten Referenzmodells für die Kugelgestalt der Erde
  - Transformation der geographischen Koordinaten (Länge und Breite) in ein kartesisches Koordinatensystem (x und y oder Rechtswert und Hochwert)


Im euklidischen Raum wird durch Bestimmung der x,y Koordinate ein Punkt in der Ebene (zweidimensional) verortet. Obwohl der dreidimensionale euklidische Raum auch die aus geographischem Winkel bestimmten Positionen abbilden kann, ist aus den oben genannten Gründen die Projektion von sphärischen Koordinaten in ein zweidimensionales kartesisches Bezugssystem üblich und meistens sinnvoll.

Kartenprojektionen können also als Transformation der von sphärischen Koordinaten der geographische Länge und Breite in kartesische Koordinaten y,x (Hochwert, Rechtswert) verstanden werden.


Da es sich bei allen Transformationen um sphärische Trigonometrie handelt und Geo-Datensätze beliebig unterschiedliche Referenzellipsoide und/oder geodätische Systeme als Grundlage haben (können), ist es von essentieller Bedeutung für das Arbeiten mit GI-Systemen diese Parameter und ihre Merkmale zu kennen und interpretieren zu können.
