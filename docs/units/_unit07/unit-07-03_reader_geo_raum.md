---
title: Objekte im Raum
toc: true
toc_label: Auf dieser Seite
---


Wie setzen wir in der Geographie am einfachsten und effizientesten die Abstraktion unserer Weltsicht um? Prinzipiell kann die geographische Repräsentation von Raum mit Hilfe zweier unterschiedlicher Konzepte durchgeführt werden: Zum einen können eindeutige Objekte identifiziert werden, sogenannte diskrete Geoobjekte, dem gegenüber steht das Konzept der kontinuierlichen Räume oder Felder  <!--more-->. 

Im Prinzip sind diskrete (Geo-) Objekte alles, was auf irgendeine Weise abgrenzbar und zählbar ist. Also z.B. Autos, Häuser, Fußgänger, Blumen, Bären, Fußballplätze und so weiter. Felder hingegen beschreiben kontinuierliche, sich raum-zeitlich verändernde Attributwerte oder Merkmalsausprägungen von Räumen (zb. Lufttemperatur, Bevölkerung / Hektar).



<html>
<a href="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Fr%C3%A4nkische-Schweiz-westliche-Kante-16-05-2005.jpeg/640px-Fr%C3%A4nkische-Schweiz-westliche-Kante-16-05-2005.jpeg?uselang=de" title="View from the west of the Fränkische Schweiz. In the center of the photo you can see the escarpment outlier // Walberla// "><img src="http://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Fr%C3%A4nkische-Schweiz-westliche-Kante-16-05-2005.jpeg/640px-Fr%C3%A4nkische-Schweiz-westliche-Kante-16-05-2005.jpeg?uselang=de" width="50%"  alt="Fränkische Schweiz Westrand"></a>
</html>

*Abbildung 01-03: Blick auf die Fränkische Schweiz von Westen. In der Bildmitte ist der Zeugenberg Walberla zu sehen (Arnold 2005)*


Beginnen wir mit einem geographischen Begriff von Raum, der uns aus dem Alltagswissen vertraut ist. So kennen viele die Region der Fränkischen Schweiz. Wir assoziieren mit solchen *Raumentitäten* eine mehr oder weniger diffuse gleichwohl abgegrenzte Raumausdehnung (Region) oder die Vorstellung einer Landschaft (vgl. Abb. 01-03). Derart als Entitäten empfundenen Räumen werden häufig auch Attribute wie kulinarische, kulturelle oder freizeitorientierte Aspekte zugeordnet. So ist die Fränkische Schweiz sowohl für ihre Weine und lokalen Biere bekannt aber auch beispielsweise für ihre Osterbrunnen (vgl. Abb. 01-04) oder ihr touristisches Potenzial.

Ein weiteres sehr eingängiges Beispiel für solche räumlichen Übergänge stellt das Relief dar (vgl. Abb. 01-05), denn die Erdoberfläche weist eine quasi-kontinuierlich unterschiedliche Höhe auf. Die räumliche Verbreitung dieser Merkmalsausprägung variiert  kontinuierlich. Versucht man vor diesem Hintergrund eine räumliche Abgrenzung der Fränkischen Schweiz so mögen nicht nur die religiösen oder kulinarischen Vorlieben der Bevölkerung, sondern auch z.B. die morphologischen oder edaphischen Eigenschaften der Erdoberfläche die sie bevölkern  inhomogen im Raum verteilt sein. Die Karte der Fränkischen Schweiz (vgl. Abb. 01-06) versucht dies durch ein radiales Verblassen der Farben im Randbereich zu symbolisieren, allerdings ohne zu verdeutlichen wie es zu dieser Abgrenzung kommt.

</html>
 <a href="http://minibsc.gis-ma.org/GISBScL1/de/image/eierbrunnen.jpg" title="Marketplace of  Ebermannstadt with the decorated Well of Mary. This is an example of the typical Easter decoration in this region (Behrendes 2010).">  <img src="http://minibsc.gis-ma.org/GISBScL1/de/image/eierbrunnen.jpg" width="50%"  alt="Easter Decoration Ebermannstadt">  </a> 
 </html> 

*Abbildung 01-04: Der Marktplatz von Ebermannstadt mit dem geschmückten Marienbrunnen und Osterbäumen. Beispielhaft für den typischen Osterschmuck der fränkischen Schweiz *

<html>
<a  href="https://www.flickr.com/photos/environmentalinformatics-marburg/13921790904" title="01-05-dem-fraenkische-schweiz by Environmental Informatics Marburg, on Flickr"><img src="https://farm8.staticflickr.com/7226/13921790904_b0919259f8_n.jpg" width="50%" alt="01-05-dem-fraenkische-schweiz"></a>
</html>

Abbildung 01-05: Digitales Geländemodell der Fränkischen Schweiz und angrenzender Regionen. Datengrundlage SRTM Daten 90 Meter räumliche Auflösung (GIS.MA 2009)

<html>
 <a href="http://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Fraenkische_Schweiz.png/800px-Fraenkische_Schweiz.png" title="Map of the Fränkische Schweiz ">  <img src="http://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Fraenkische_Schweiz.png/800px-Fraenkische_Schweiz.png" width="50%"  alt="Map of Frankonian Switzerland">  </a>
 </html> 


*Abbildung 01-06: Karte der Fränkischen Schweiz (Mikmaq 2009)*


## Diskrete und kontinuierliche Objekte in GI-Systemen

Diskrete Geobjekte sind durch eine klare räumliche Abgrenzbarkeit gekennzeichnet, während räumlich kontinuierliche Ausprägungen zunächst keine eindeutig objektbezogene räumliche Abgrenzbarkeit aufweisen. Diese Regel ist abhängig von der Beobachtungs- oder Interessenskala. Hinzu kommt, dass die binäre Logik computergerechter Datenverarbeitung eine Begrenzung der Informationen notwendig macht. In der Praxis der Geoinformationssysteme werden daher auch kontinuierliche Felder wie räumlich abgegrenzte Objekte behandelt also – unter Berücksichtigung einer für die Fragestellung geeigneten Skala – in diskrete Raumeinheiten aufgeteilt. Der wesentliche Unterschied zu dem Konzept der diskreten Objekte im leeren Raum ist, dass diese mit bekannter Position in einem ansonsten leeren Raum existieren, während in diskrete Objekte zerlegte Kontinua diesen Raum lückenlos und überschneidungsfrei mit ihren Eigenschaften abbilden und beschreiben.

Trotz der bisherigen Erläuterungen ist die Beantwortung der Frage „Was sind geographische Daten bzw. Geodaten?“ nicht richtig greifbar. Bislang erscheint die Abstraktion willkürlich und nicht nachvollziehbar zu sein. <!--more-->

Geodaten oder geographische Daten (singl. Datum) liefern räumlich fixierte, maschinenlesbare Konstrukte aus Zeichen, Bildern oder Funktionen die mit entsprechenden Interpretationsregeln zu Informationen werden. Da Daten Interpretationsvorschriften benötigen, um zu Informationen zu werden, müssen wir dieses Wissen nur noch mit dem Ziel, eine geographische Repräsentation der Welt durchzuführen, verbinden.

Die zentrale Fragestellung lautet: Was ist spezifisch geographisch und wie können wir diese geographische Ableitungen der Wirklichkeit durchführen? Ein typisches Beispiel für Geodaten ist in folgender Aussage kodiert:

“**Die Temperatur am Havanna Airport betrug am Donnerstag, den 17.09.2009 um 08:00 lokaler Zeit 23.0°C. Die Koordinaten lauten: 22° 59′ 21″ N, 82° 24′ 33″ W, 64 m ü. MSL.**”

Analysieren wir diese Aussage so finden wir alle wesentlichen Elemente der geographischen Repräsentation eines Echtweltobjekts. Die Aussage verbindet Raum (Koordinaten und Höhe) mit Zeit (Datum/Zeitangabe) und der Eigenschaft bzw. dem Attribut der Lufttemperatur. Zusätzlich sind dem derart festgelegten Ort weitere Eigenschaften zugeordnet: Havanna und Airport. Aus dieser Aussage kann schließlich folgendes geographisches Datum gebildet werden:

**22° 59′ 21″ N; 82° 24′ 33″ W; 64 m ü. MSL; 8.00 Uhr LT; Havanna Airport; 23.0 °C**

Geographische Daten verbinden somit räumlich eindeutig verortete Objekte mit mindestens einer Merkmalsausprägung. Diese „Daten-Primitive“ können natürlich beliebig komplex werden und darüber hinaus direkt oder auch indirekt zueinander in Beziehung gesetzt bzw. voneinander abgeleitet werden. Auch scheinbar nicht geographische Aussagen wie:

„Der K2 hat den schwersten Normalweg eines 8000er Gipfels“

können in ein geographisches Datum überführt werden. Hierzu sind weitere Kenntnisse bzw. Dekodierungsvorschriften notwendig. So muss man wissen dass K2 der international bekanntere Namen des *Lambha Pahar*, des zweithöchsten Berges der Erde ist. Weiterhin muss bekannt sein, welche geographischen Koordinaten seinen Gipfel repräsentieren und dass „Normalweg“ im Alpinistenjargon der „am häufigsten begangene und in der Regel einfachste Aufstieg“ bedeutet. Aus dieser Interpretation wird somit das geographische Datum:

**35° 53′ 0″ N; 76° 31′ 0″ O; Lambha Pahar; K2; >8000 m ü. MSL; schwerster Normalweg 8000+**


<!--## Abstraktion für Einsteiger--->

<!--Betrachten Sie das unten stehende Luftbild (Abb. 01-07) und überlegen Sie, wie Sie die Repräsentation dieses Raumes vornehmen würden. Erfassen Sie folgende Merkmale:--->


<!--*     Landnutzung in Form von Landnutzungsarten
*     Straßennetz
*     Bebauungsfläche

<!--<html>
 <a href="http://upload.wikimedia.org/wikipedia/commons/2/2c/Sanspareil_Luftbild_West.jpg" title="Aerial photo of the rockgarden *Sanspareil* (Fränkische Schweiz) as an example of a cutout of reality that has to be represented by geoinformation means.">  <img src="http://upload.wikimedia.org/wikipedia/commons/2/2c/Sanspareil_Luftbild_West.jpg" width="50%"  alt="Aerial photo of the rockgarden *Sanspareil* (Fränkische Schweiz) as an example of a cutout of reality that has to be represented by geoinformation means">  </a>
 </html> --->
 
<!--*Abbildung 01-07: Luftbild des Felsengarten Sanspareil (Fränkische Schweiz) als Beispiel eines zu repäsentierenden Wirklichkeitsauschnitts. Es wird vernachlässigt, dass ein Luftbild selbst bereits eine Repräsentation der Wahrnehmung des Fotografen ist (Presse03 2009)*--->

<!--### Bearbeiten Sie…
Versuchen Sie das Bild in für Sie wesentliche Kategorien zu abstrahieren und identifizieren Sie hierzu Geoobjekte die ihnen ausreichend ähnlich vorkommen.  Schreiben Sie sich in Stichpunkten die nötigen Abstraktionsschritte und Ihre Vorgehensweise auf.--->

