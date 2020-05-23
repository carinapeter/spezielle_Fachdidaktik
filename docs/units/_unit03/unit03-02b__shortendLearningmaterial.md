
<html><a href="https://www.flickr.com/photos/environmentalinformatics-marburg/13993690753" title="02-9 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7369/13993690753_173e09e3fb.jpg" width="500" height="494" alt="02-9"></a></html>

*Abbildung 02-09: Graphische und numerische Darstellung des Rasterdatenmodells. Zur besseren Vergleichbarkeit wurden die bekannten Objekte gewählt (GIS.MA 2009)*

Obwohl möglich, sind Rasterdatenmodelle mit unregelmäßig geformten Zellen in der GIS-Praxis quasi nicht existent. Meist sind die Zellen in einer gleichförmigen Matrix, z.B. einem Gitter (grid) aus Zeilen (horizontal) und Spalten (vertikal) angeordnet (vgl. Abbildung Rastermodell). In der Praxis werden regelmäßige Maschen fast ausschließlich als Quadrate (gelegentlich auch als Dreiecke bzw. Sechsecke) verwendet. Diese Quadrate werden in Zusammenhang mit Rasterdaten als Rasterzelle oder Pixel (picture element) bezeichnet.

<html><a href="https://www.flickr.com/photos/environmentalinformatics-marburg/13993690463" title="02-10 by Environmental Informatics Marburg, on Flickr"><img src="https://farm3.staticflickr.com/2905/13993690463_419e1da5a0.jpg" width="500" height="428" alt="02-10"></a></html>

*Abbildung 02-10: Das implizite Raumkonzept der Zeilen- und Spaltenzählung (Laufvariablen) und des Kartesischen Koordinatensystems für einen Rasterdatensatz (GIS.MA 2009)*

Durch Anordnung, der sich nicht überschneidenden Zellen in Zeilen und Spalten entsteht ein impliziter Raumbezug jeder Zelle. Zu beachten ist dabei, dass der Ursprung eines Rasterbildes immer in der oberen linken Ecke liegt und von dort üblicherweise mit den beiden Laufindizes i, j durchgezählt wird. Hierdurch ist jedes Pixel eindeutig identifizierbar. Auf diese Weise ist bezogen auf jedes Pixel auch ein expliziter Raumbezug vorhanden. Allerdings nutzt der theoretische explizite Raum wenig für die Verortung in einem definierten kartesischen Koordinatensystem bzw. in der Echtwelt. Diese Verortung ist sowohl für die gemeinsame Verwendung von Rasterdaten mit Vektordaten notwendig, als auch unerlässlich für die geographischen Referenzierung der Rasterzellen bezogen auf die Echtwelt. Daher werden Rasterdatenmodelle grundsätzlich auch mit einem kartesischen Koordinatensystem versehen. Dieses hat allerdings den Ursprung (wie üblich) in der unteren linken Ecke. Die Rasterzellen können also sowohl über ihren Laufindex als auch über das kartesische Koordinatensystem im Raum identifiziert werden.


Geodaten sind Merkmalsausprägungen, die hinsichtlich eines spezifischen Zwecks,  Geoobjekten (diskrete Gegenstände oder kontinuierliche Raumeigenschaften) zielführend charakterisieren. Geoobjekte sind immer Repräsentationen real existierender Objekte, die durch eine Position im Raum direkt (z.B. durch Koordinaten = Geometrie) oder indirekt (z.B. durch Beziehungen = Topologie) referenzierbar (=verortet) sind. Sie sind immer formale Kodierungen der Eigenschaften und der zugehörigen Interpretation (=Informationen) dieser echten Objekte (vgl. Abb. 01-08).
{: .notice--info}

<html>
 <a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13898323961" title="01-08-Geoobjekt-schema1 by Environmental Informatics Marburg, on Flickr">``<img src="https://farm8.staticflickr.com/7419/13898323961_21d8beca23_n.jpg" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>

*Abbildung 01-08: Schematische Strukturierung eines Geoobjekts in räumliche, dynamische und inhaltliche Aspekte (GIS.MA 2009)*








Geodaten sind Merkmalsausprägungen, die hinsichtlich eines spezifischen Zwecks, Geoobjekten (diskrete Gegenstände oder kontinuierliche Raumeigenschaften) zielführend charakterisieren. Geoobjekte sind immer Repräsentationen real existierender Objekte, die durch eine Position im Raum direkt (z.B. durch Koordinaten = Geometrie) oder indirekt (z.B. durch Beziehungen = Topologie) referenzierbar (=verortet) sind. Sie sind immer formale Kodierungen der Eigenschaften und der zugehörigen Interpretation (=Informationen) dieser echten Objekte (vgl. Abb. 01-08).
{: .notice--info}

<html>
 <a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13898323961" title="01-08-Geoobjekt-schema1 by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7419/13898323961_21d8beca23_n.jpg" width="50%"  alt="01-08-Geoobjekt-schema1"></a>
</html>

*Abbildung 01-08: Schematische Strukturierung eines Geoobjekts in räumliche, dynamische und inhaltliche Aspekte (GIS.MA 2009)*






## Geoobjekte

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
