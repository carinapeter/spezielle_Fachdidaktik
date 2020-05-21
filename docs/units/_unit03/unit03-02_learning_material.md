---
title: Lernmaterialien
toc: true
header:
  image: /assets/images/02-splash.jpg
  image_description: "Blick ins Lahntal mit Grünlandwirtschaft, Baustelle für Stromtrassen und Regenbogen."
  caption: "Foto: T. Nauss / CC0"

panel1:  
  - url: https://www.flickr.com/photos/environmentalinformatics-marburg/13981635311
    image_path: https://live.staticflickr.com/7325/13981635311_ae1b12e0cf_b.jpg
    title: "Screenshot von OpenStreeMap mit einem roten Kreis der einen fiktiven Pannenort auf einer Autobahn identifziert."
    alt: "Screenshot von OpenStreeMap mit einem roten Kreis der einen fiktiven Pannenort auf einer Autobahn identifziert."

panel2:  
  - url: https://w.wiki/RRv
    image_path: https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Bukowsko_-_mapa_katastralna_%281906%29.jpg/1280px-Bukowsko_-_mapa_katastralna_%281906%29.jpg
    title: "Historischer Katasterplan von Bukowsko, Galizien. Grafik: przeslal Marek Silarski / Public domain via wikimedia.org"
    alt: "Katasterplan von Bukowsko, 1906, Galizien."

panel3:  
  - url: https://w.wiki/RS6
    image_path: https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Geographic_coordinates_sphere.svg/487px-Geographic_coordinates_sphere.svg.png
    title: "Geographische Koordinaten auf einer idealisierten Erdkugel. Grafik: E^(nix) / CC BY-SA via wikimedia.org"
    alt: "Durch Winkel abgebildete, geographische Koordinaten auf einer Kugel."
---

## Positionsbestimmung und Datenerfassung im Raum

## Verortung im Raum
Für eine präzise Kommunikation und Analyse von räumlichen Phänomenen ist es notwendig, die Beschreibung von Objekten im Raum mit einer Konvention zur räumlichen Verortung zu verknüpfen. Wir müssen Objekte und deren Merkmale an geographisch identifizierbare und kartographisch abbildbare Positionen binden. Diesen Vorgang nennt man Georeferenzieren, Geolozieren, Verorten oder Geotaggen. Eine Georeferenzierung muss nicht mathematisch sein. Vielmehr ist sie Teil des räumlichen Modellierungsprozesses und die Auswahl der Konvention zur räumlichen Verortung wird deshalb von der individuellen Fragestellung bestimmt. Im Folgenden lernen wir verschiedene Konventionen zur räumlichen Verortung kennen.

### Räumliche Verortung durch Namen und Adressen

Orte durch Benennung zu lokalisieren gehört zu den ältesten Kulturtechniken der Menschheit. Durch die Kombination von Namen und Ziffern ergibt sich beispielsweise die postalische Kodierung. In dieser Konvention ist *Deutschhaustrasse 10, 35032 Marburg, Deutschland* die Georeferenzierung für eines der Gebäude des Fachbereichs Geographie in Marburg. Sie ist ausreichend, um die Post zuverlässig zuzustellen und funktioniert ohne Mathematik, ohne geographische Koordinaten durch eine Kette von Namenskodierung vom Gebäude bis zum Nationalstaat. Wenn sich die Kodierung ändert, beispielsweise durch die Umbenennung von Karl-Marx-Stadt in Chemnitz, bleibt der geographische Raumbezug immer noch erhalten. Voraussetzung für das System ist aber die Eineindeutigkeit der Beschreibung. Allein die Angabe eines Ortsnamens, z.B. London oder Neunkirchen, wäre zu wenig, da diese Namen vielfach auf der Erde vorkommen. Es braucht also ein übergeordnetes Zuordnungssystem, wie z.B. Landkreise oder Nationalstaaten. Noch besser ist eine möglichst allgemeingültiges Zuordnungssystem, weshalb die Thurn und Taxis Post 1853 in Deutschland Ortsnamen mit einem Zahlenschlüssel kodiert, der eine abstrakte, nachvollziehbare Identifikation der Raumposition dieser Orte möglich macht.

**Info**: Allen geographischen Informationen liegt eine eindeutige räumliche Zuordnung zugrunde.
{: .notice--info}


### Relative Verortung durch lineare Referenzierung

Eine lineare Referenzierung basiert auf eindimensionalen Lagebeziehungen. Entlang von Autobahnen wird dieses System verwendet und im Raum durch Kilometerangaben (auf kleinen blauen Schildern) abgebildet. Eine Pannen- oder Unfallstelle auf der Autobahn kann durch die Angabe *64,0 km, Fahrtrichtung Hamburg, rechte Fahrspur* verortet werden.

{% include gallery id="panel1"  caption= "Pannenort nördlich von Soltau." %}

Die Konvention funktioniert, weil die Kilometerangabe eindeutig ist. Nullpunkt ist der definierte Beginn der Autobahn und die Wegstrecke ist durch die Autobahn, also einer eindeutig definierten Strecke, vorgegeben. Das bedeutet im Umkehrschluss, dass eine solche, quantitative Referenzierung nur bei eindimensionalen Geoobjekten, also linearen Strukturen wie Straßen, Schienen, Rohr- oder Versorgungsleitungen, angewendet werden kann.

**Info**: Lineare Referenzen sind immer topologisch korrekt und können immer in geometrisch eindimensional messbaren Entfernungen angeben werden.
{: .notice--info}


## Geometrisch exakte maßstäbliche Raumabbildung

Die geometrisch exakte und maßtsäbliche Raumabbildung ist eine zweidimensionale Erweiterung der linearen Referenzierung. Grundlage ist die von Carl Friedrich Gauß (1777 - 1855) entwickelte Vermessungsmethode, die eine Abbildung von Objekten relativ und in beliebiger Lage zueinander ermöglicht. Ein Beispiel für diese Form der Raumbeschreibung sind die Flurkarten, die als Teil der Kataster die Flurstücken und deren Eigentumsverhältnissen definieren.

{% include gallery id="panel2"  caption= "Historischer Katasterplan von Bukowsko, Galizien. Grafik: [przeslal Marek Silarski / Public domain via wikimedia.org](https://w.wiki/RRv)" %}

Während bei modernen Flurkarten und digitalen Katastern natürlich ein geographisches Referenzsystem hinterlegt ist, fehlt dieses in traditionellen Flurkarten. Die Karten dienen stattdessen ausschließlich der exakten Größenbeschreibung von baulichen Anlagen und Liegenschaften. Weitere tabellarische Informationen (z.B. Eigentumsverhältnisse, Lasten) werden im Liegenschaftsbuch vorgehalten und über eineindeutige Zahlenkombinationen mit den in der Karte dargestellten Flächen verbunden.

**Info**: Katasterpläne sind immer topologisch korrekt und bieten immer geometrisch zweidimensional maßstäblich messbare Entfernungen und Flächen.
{: .notice--info}


## Geographische Raumabbildung

Sollen Objekte in Raumabbildungen nicht nur relativ exakt zueinander, sondern auch absolut auf der Erde verortet werden, müssen die Objekte in einem mit der Erde verbundenen Koordinatensystem verortet werden. Wenn wir für die Erde in erster Näherung eine Kugelgestalt annehmen, dann können beliebige Punkte an ihrer Oberfläche durch zwei Winkel bestimmt werden: Der Zenit beschreibt die geographische Breite, der Azimuth die geographische Länge. Eine geographische Breite von 0° beschreibt Orte entlang des Äquators. Nördliche Breiten werden durch positive Gradangaben oder durch die Bezeichnung "Nord", südliche Breiten durch negative Gradangabne oder die Bezeichnung "Süd" beschrieben. Eine geographische Länge von 0° beschreibt Orte entlang des Längenkreises, der durch die Londoner Sternwarte Greenwich verläuft. Diesen Längengrad bezeichnet man als Hauptmeridian. Östliche Breiten werden durch positive Gradangaben oder die Bezeichnung "Ost", westliche Breiten durch negative Gradangaben oder die Bezeichnung "West" beschrieben.

{% include gallery id="panel3"  caption= "Geographische Koordinaten auf einer idealisierten Erdkugel. Grafik: [E^(nix) / CC BY-SA via wikimedia.org](https://w.wiki/RS6)" %}

Für die geographische Raumabbildung *geodätisches Bezugssystem* notwendig. Es besteht aus dem Geodätischen Datum und dem Referenzrahmen:

* Geodätisches Datum: Anstelle einer Kugelgestallt wird die abgeplattete Erdform durch einen Ellipsoid beschrieben, der ggf. lokal angepasst und als Referenzellipsoid bezeichnet wird. Die Lage und Ausrichtung des Referenzellipsoid wird im Schwerkraftzentrum der Erde eindeutig verortet und durch ein geodätisches Datum eindeutig beschrieben.
* Referenzrahmen: Das durch das geodätische Datum aufgespannte Koordinatensystem wird an der Erdoberfläche über die Koordinaten von sogenannten Festpunkten eingehängt. Im Minimalfall ist ein Festpunkte notwendig. Festpunkte ihre Koordinaten spannen zusammen den Referenzrahmen auf.

**Info**: Da es viele Referenzellipsoide und Referenzrahmen gibt muss das jeweils verwendete, geodätische Bezugssystem zwingend bekannt sein. Die gleichen Koordinaten beschreiben bei falscher geodätischer Zuordnung sonst Orte, die um mehrere Zehnerkilometer auseinander liegen können.
{: .notice--info}


## Geodätische Raumabbildung

Mit Hilfe von geographischen Raumabbildungen können Objekte absolut auf der Erde verortet werden. Die Abbildung von Räumen basiert aber häufig auf zweidimensionalen Medien - sowohl in der Aufnahme durch z.B. Luft- oder Satellitenbilder, als auch in der Darstellung z.B. in gedruckten oder digitalen Karten. Die dreidimensionale geographische Raumabbildung muss also in eine zweidimensionale, verebnete Projektionen der Erdoberfläche überführt werden. Dieser Vorgang wird häufig kartographische oder geodtätische Projektion bzw. Abbildung genannt. Die mathematische Transformationsvorschrift wird als Kartennetzentwurf oder (Karten-)Projektsionssystem bezeichnet. Für eine Kartenprojektion benötigt man analog zur geographischen Raumabbildung geodätisches Bezugssystem zur Abbildung der Erde und zusätzlich eine Transformationsvorschrift, die die geographischen Koordinaten (Länge und Breite) in ein kartesisches Koordinatensystem (Rechtswert und Hochwert) überführt. Zusammen ergibt sich so aus geodätischem Bezugssystem (Geodätisches Datum und Referenzrahmen) und Projektionssystem das eindeutige *Koordinatenreferenzsystems*.

**Info**: Um die Vielzahl an Koordinatenreferenzsystems eineindeutig zu beschreiben, hat die European Petroleum Survey Group Geodesy ein eindeutiges Nummernsystem entwickelt, das jedes Koordinatensystem mit einem nummerischen EPSG-Code beschreibt. Eine Übersicht findet sich z.B. auf der [Spatial Reference](https://spatialreference.org/) Webseite.
{: .notice--info}

Geodätische und kartographische Abbildung wird oft synonym verwendet. Die kartographsiche Abbildung beschreibt strenggenommen aber nur solche Projektionen, die unmittelbar geometrisch für die ganze Erde oder zumindest die Erdhalbkugel konstruiert werden können. Damit ist sie nur für kleinmaßstäbige Abbildungen geeignet. Geodätische Abbildungen bezeichnen demgegenüber die weitgehend verzerrungsfreien, großmaßstäbigen Darstellungen, die getrennt für schmalen Streifen auf der Erde berechnet werden.


<!--tnauss: Überarbeitet bis hierher-->


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


  * Skalenunabhängige Identifikation jedes Punktes auf der Erdoberfläche
  * Messbarkeit, also mathematische Berechnungsvorschriften für alle geometrischen Operationen
  * Zuordnung aller beliebig skalierten Attribute (z.B. Name, Temperatur, Qualität)



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
