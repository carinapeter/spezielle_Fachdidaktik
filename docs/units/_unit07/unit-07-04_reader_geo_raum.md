---
title: Merkmale geographischer Daten
toc: true
toc_label: Auf dieser Seite
---


Anhand der bereits eingeführten Beispiele von Gedoaten (Temperatur am Havann Airport, Lambha Pahar Normalweg) wird deutlich, dass die Attribute von Raumobjekten nahezu beliebige Ausprägungen aufweisen können. <!--more--> Manche dieser Ausprägungen können physikalischer Natur sein oder beschreiben soziologische Aspekte, verweisen auf Eigentumsrechte, sind fortlaufende Nummern etc.. Sie können Orte identifizieren (z.B. Adressen) oder Räume (z.b. manche Postleitzahlen). Sie können Maßzahlen sein (z.B. Einwohner/Fläche) oder kategoriale Ausprägungen haben (beliebte Kneipe, unbeliebte Kneipe). Da es in den Wissenschaften üblich ist mit Werten, Attributen und ihren Ausprägungen zu arbeiten, sind diese auch im Bereich Geographischer Informationssysteme bekannt. Die Skalenniveaus sind bereits aus der Statistik bekannt und werden Nominal-, Ordinal- und Kardinalskala genannt. Sind Merkmalsausprägungen zeitabhängig werden sie als zyklisch bezeichnet.

So einfach Geodaten erzeugt werden können, begegnen wir einer bekannten Problematik. Es ist zwar eindrucksvoll die Temperatur am Flughafen von Havanna um 8.00 Uhr lokaler Zeit am 17.09.2009 als Repräsentation des Wetters verfügbar zu haben. Doch wie gut beschreibt diese Repräsentation des Wetters den Durchzug eines Hurrikans um 8.15 Uhr des gleichen Tages?

Die Welt ist prinzipiell beliebig komplex. Unsere Computer hingegen sind in ihren Möglichkeiten Merkmalsausprägungen zu verarbeiten und abzuspeichern extrem endlich!  Die Möglichkeiten unseres Gehirns liegen irgendwo dazwischen. Als Folge kann, aufgrund mentaler und technischer Beschränktheit, nur eine außerordentlich limitierte Anzahl von Merkmalsausprägungen in die Repräsentation von Echtwelt eingehen. Es besteht folglich die Notwendigkeit zur zielgerichteten Vereinfachung der Echtwelt. Um während der Entwicklung geographischer Repräsentationen einen objektivierbaren Rahmen für diese Vereinfachungen zu haben, werden diese immer skalenorientiert auf der  Raum- **und** Zeitskala durchgeführt.

Aufgrund der Vielzahl von Möglichkeiten zur Reduktionen in der Erdbeschreibung gibt es für diesen Prozess innerhalb der GI eine unüberschaubare Vielzahl von Konzepten und Vorgehensweisen. Die Frage einer sinnhaften, gültigen und zweckdienlichen Vereinfachung von Repräsentationen von Echtwelt wird uns ständig beschäftigen.


Geodaten sind Merkmalsausprägungen, die hinsichtlich eines spezifischen Zwecks,  Geoobjekten (diskrete Gegenstände oder kontinuierliche Raumeigenschaften) zielführend charakterisieren. Geoobjekte sind immer Repräsentationen real existierender Objekte, die durch eine Position im Raum direkt (z.B. durch Koordinaten = Geometrie) oder indirekt (z.B. durch Beziehungen = Topologie) referenzierbar (=verortet) sind. Sie sind immer formale Kodierungen der Eigenschaften und der zugehörigen Interpretation (=Informationen) dieser echten Objekte (vgl. Abb. 01-08).
{: .notice--info}

<html>
 <a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13898323961" title="01-08-Geoobjekt-schema1 by Environmental Informatics Marburg, on Flickr">``<img src="https://farm8.staticflickr.com/7419/13898323961_21d8beca23_n.jpg" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>

*Abbildung 01-08: Schematische Strukturierung eines Geoobjekts in räumliche, dynamische und inhaltliche Aspekte (GIS.MA 2009)*

<!---Versuchen Sie diese sehr abstrakte Sichtweise im GIS-Alltag wiederzufinden. Besuchen Sie die Ihnen evtl. schon bekannten Webseiten, nur dass Sie nun ihren Fokus auf die Art der Repräsentation richten. Welche Merkmale/Merkmalsausprägungen werden genannt (evtl. auch welche werden nicht genannt)? Ist die Abstraktion für den von Ihnen vermuteten Zweck (Zielsetzung) sinnvoll? Ist der geographische Aspekt für Sie ersichtlich?--->

<!---*    [Sanifair Autobahnen](http://www.sanifair.de/standorte/sanifair/fullscreen?offHighwayStandort=1142770&country=de)
*    [ Aktuelle Pegel Lahn]( http///www.wetterbote.de/wetter/pegel/lahn.htm )
*    [ Bad Arolsen]( http///www.hlug.de/medien/luft/recherche/recherche.php?station=1115)
*    [ Cineplex]( http///www.cineplex.de/kino/home/city32/) --->

<!--- ## Bearbeiten Sie…
Versuchen Sie sich zu verdeutlichen, dass die Repräsentation von Echtweltausschnitten für unseren Alltag allgegenwärtig ist. --->

---
<!--- *  Gibt es formale/inhaltliche Unterschiede in der geographischen Repräsentation der Marburger Lufthygiene-Messstation und des Marburger Cineplex?
*  Suchen Sie eigene Beispiele einer formalen geographischen Repräsentation in ihrem Alltag. Wie beschreiben Sie z.B. ihrem neuen Mitbewohner den Weg in die Mensa (ins Seminar, zu einem Buch in der Bibliothek….)?
*  Versuchen Sie zu identifizieren, wie eine derartige Repräsentation formalisiert werden kann (Tabelle, Baumstruktur, Beschreibung, Zahlen, Bilder…) --->

---

