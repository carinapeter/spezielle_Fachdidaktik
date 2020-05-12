---
title: Lernmaterialien
toc: true
header:

---

## Diskrete und kontinuierliche Objekte in GI-Systemen

Diskrete Geobjekte sind durch eine klare räumliche Abgrenzbarkeit gekennzeichnet, während räumlich kontinuierliche Ausprägungen zunächst keine eindeutig objektbezogene räumliche Abgrenzbarkeit aufweisen. Diese Regel ist abhängig von der Beobachtungs- oder Interessenskala. Hinzu kommt, dass die binäre Logik computergerechter Datenverarbeitung eine Begrenzung der Informationen notwendig macht. In der Praxis der Geoinformationssysteme werden daher auch kontinuierliche Felder wie räumlich abgegrenzte Objekte behandelt also – unter Berücksichtigung einer für die Fragestellung geeigneten Skala – in diskrete Raumeinheiten aufgeteilt. Der wesentliche Unterschied zu dem Konzept der diskreten Objekte im leeren Raum ist, dass diese mit bekannter Position in einem ansonsten leeren Raum existieren, während in diskrete Objekte zerlegte Kontinua diesen Raum lückenlos und überschneidungsfrei mit ihren Eigenschaften abbilden und beschreiben.

Trotz der bisherigen Erläuterungen ist die Beantwortung der Frage „Was sind geographische Daten bzw. Geodaten?“ nicht richtig greifbar. Bislang erscheint die Abstraktion willkürlich und nicht nachvollziehbar zu sein.

Geodaten oder geographische Daten (singl. Datum) liefern räumlich fixierte, maschinenlesbare Konstrukte aus Zeichen, Bildern oder Funktionen die mit entsprechenden Interpretationsregeln zu Informationen werden. Da Daten Interpretationsvorschriften benötigen, um zu Informationen zu werden, müssen wir dieses Wissen nur noch mit dem Ziel, eine geographische Repräsentation der Welt durchzuführen, verbinden.

Die zentrale Fragestellung lautet: Was ist spezifisch geographisch und wie können wir diese geographische Ableitungen der Wirklichkeit durchführen? Ein typisches Beispiel für Geodaten ist in folgender Aussage kodiert:

“Die Temperatur am Havanna Airport betrug am Donnerstag, den 17.09.2009 um 08:00 lokaler Zeit 23.0°C. Die Koordinaten lauten: 22° 59′ 21″ N, 82° 24′ 33″ W, 64 m ü. MSL.”

Analysieren wir diese Aussage so finden wir alle wesentlichen Elemente der geographischen Repräsentation eines Echtweltobjekts. Die Aussage verbindet Raum (Koordinaten und Höhe) mit Zeit (Datum/Zeitangabe) und der Eigenschaft bzw. dem Attribut der Lufttemperatur. Zusätzlich sind dem derart festgelegten Ort weitere Eigenschaften zugeordnet: Havanna und Airport. Aus dieser Aussage kann schließlich folgendes geographisches Datum gebildet werden:

22° 59′ 21″ N; 82° 24′ 33″ W; 64 m ü. MSL; 8.00 Uhr LT; Havanna Airport; 23.0 °C

Geographische Daten verbinden somit räumlich eindeutig verortete Objekte mit mindestens einer Merkmalsausprägung. Diese „Daten-Primitive“ können natürlich beliebig komplex werden und darüber hinaus direkt oder auch indirekt zueinander in Beziehung gesetzt bzw. voneinander abgeleitet werden. Auch scheinbar nicht geographische Aussagen wie:

„Der K2 hat den schwersten Normalweg eines 8000er Gipfels“

können in ein geographisches Datum überführt werden. Hierzu sind weitere Kenntnisse bzw. Dekodierungsvorschriften notwendig. So muss man wissen dass K2 der international bekanntere Namen des Lambha Pahar, des zweithöchsten Berges der Erde ist. Weiterhin muss bekannt sein, welche geographischen Koordinaten seinen Gipfel repräsentieren und dass „Normalweg“ im Alpinistenjargon der „am häufigsten begangene und in der Regel einfachste Aufstieg“ bedeutet. Aus dieser Interpretation wird somit das geographische Datum:

35° 53′ 0″ N; 76° 31′ 0″ O; Lambha Pahar; K2; >8000 m ü. MSL; schwerster Normalweg 8000+

## Merkmale geographischer Daten

Anhand der bereits eingeführten Beispiele von Gedoaten (Temperatur am Havann Airport, Lambha Pahar Normalweg) wird deutlich, dass die Attribute von Raumobjekten nahezu beliebige Ausprägungen aufweisen können. Manche dieser Ausprägungen können physikalischer Natur sein oder beschreiben soziologische Aspekte, verweisen auf Eigentumsrechte, sind fortlaufende Nummern etc.. Sie können Orte identifizieren (z.B. Adressen) oder Räume (z.b. manche Postleitzahlen). Sie können Maßzahlen sein (z.B. Einwohner/Fläche) oder kategoriale Ausprägungen haben (beliebte Kneipe, unbeliebte Kneipe). Da es in den Wissenschaften üblich ist mit Werten, Attributen und ihren Ausprägungen zu arbeiten, sind diese auch im Bereich Geographischer Informationssysteme bekannt. Die Skalenniveaus sind bereits aus der Statistik bekannt und werden Nominal-, Ordinal- und Kardinalskala genannt. Sind Merkmalsausprägungen zeitabhängig werden sie als zyklisch bezeichnet.

So einfach Geodaten erzeugt werden können, begegnen wir einer bekannten Problematik. Es ist zwar eindrucksvoll die Temperatur am Flughafen von Havanna um 8.00 Uhr lokaler Zeit am 17.09.2009 als Repräsentation des Wetters verfügbar zu haben. Doch wie gut beschreibt diese Repräsentation des Wetters den Durchzug eines Hurrikans um 8.15 Uhr des gleichen Tages?

Geodaten sind Merkmalsausprägungen, die hinsichtlich eines spezifischen Zwecks, Geoobjekten (diskrete Gegenstände oder kontinuierliche Raumeigenschaften) zielführend charakterisieren. Geoobjekte sind immer Repräsentationen real existierender Objekte, die durch eine Position im Raum direkt (z.B. durch Koordinaten = Geometrie) oder indirekt (z.B. durch Beziehungen = Topologie) referenzierbar (=verortet) sind. Sie sind immer formale Kodierungen der Eigenschaften und der zugehörigen Interpretation (=Informationen) dieser echten Objekte (vgl. Abb. 01-08). {: .notice--info}

<html>
 <a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13898323961" title="01-08-Geoobjekt-schema1 by Environmental Informatics Marburg, on Flickr">``<img src="https://farm8.staticflickr.com/7419/13898323961_21d8beca23_n.jpg" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>

*Abbildung 01-08: Schematische Strukturierung eines Geoobjekts in räumliche, dynamische und inhaltliche Aspekte (GIS.MA 2009)*
