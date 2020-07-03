---
title: ex-1 | Physische Raumbeschreibung
toc: true
header:
  image: /assets/images/02-splash.jpg
  image_description: "Blick ins Lahntal mit Grünlandwirtschaft, Baustelle für Stromtrassen und Regenbogen."
  caption: "Foto: T. Nauss / CC0"

panel1:  
  - image_path: /assets/images/exam/Stuttgart2008.jpeg
    title: "Stuttgart 2008"
  - image_path: /assets/images/exam/Stuttgart2015.jpeg
    title: "Stuttgart 2015"




---
<script type="text/javascript" async
	src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-MML-AM_CHTML">
</script>

<script type="text/x-mathjax-config">
   MathJax.Hub.Config({
     extensions: ["tex2jax.js"],
     jax: ["input/TeX", "output/HTML-CSS"],
     tex2jax: {
       inlineMath: [ ['$','$'], ["\\(","\\)"] ],
       displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
       processEscapes: true
     },
     "HTML-CSS": { availableFonts: ["TeX"] }
   });
</script>



## Aufgabe 01-1: Lärm- und Luftverschmutzung in Stuttgart

In den neueren Ausgaben des Diercke Atlas’ findet sich eine Karte zur Verkehrsbelastung in Stuttgart. [Hier finden Sie die Versionen der Karte von 2008 und 2015](https://ilias.uni-marburg.de/goto.php?target=fold_1924576&client_id=UNIMR).

**Karten werden noch ordentlich eingescannt, wenn die Aufgabe drinbleibt**

{% include gallery id="panel1"  caption= "Stuttgart 2008 & 2015" %}


## Aufgabenstellung ex-1-L1: Kartenbeschreibung
{% capture ex-1-L1 %}
Was können Sie den Karten entnehmen? Beschreiben Sie die beiden Karten übersichtsartig in max. 10 ganzen Sätzen und gehen Sie dabei gegebenenfalls auf Unterschiede ein. Bewerten Sie die Art der Darstellung des Straßenlärms und der Luftbelastung in drei Sätzen.


Umfang: 1 Seite in Ihrer PDF-Datei.

{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L1:</h4>
  {{ ex-1-L1 | markdownify }}
</div>

## Aufgabenstellung ex-1-L2: Güte der Karte
{% capture ex-1-L2 %}
Schätzen Sie die Aussagekraft und Belastbarkeit der Luftbelastung in der Karte ein. Nutzen Sie hierfür die Auskuft des [LUBW](https://udo.lubw.baden-wuerttemberg.de/public/api/processingChain?ssid=7b886373-2c8b-4e06-88a4-93900826fdc4&selector=luftmessdaten.meros%3Ameros_z_luft_vergleich_messstation_ueber_nmc.sel), begründen Sie Ihre Einschätzung in ca. 5 Sätzen.


Umfang: 1 Seite in Ihrer PDF-Datei.


{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L2:</h4>
  {{ ex-1-L2 | markdownify }}
</div>




## Aufgabenstellung ex-1-L3: Höhenprofil zeichnen

Im Folgenden zeichnen und vergleichen Sie zwei Höhenprofile des gleichen Raumausschnitts. Suchen Sie die folgenden Koordinaten und betrachten Sie einmal die Topographie entlang der Luftlinie und einmal entlang der kürzeste Wegstrecke.


<!--
3 Varianten
-->

* A: 50,805203° N; 8,806826° E
* B: 50,812275° N; 8,730971° E

*Alternativen:*
* A: 50,769535° N; 8,797826° E
* B: 50,797801° N; 8,732459° E

* A: 50,817401° N; 8,808866° E
* B: 50,821681° N; 8,741819° E


{% capture ex-1-L3 %}

Suchen Sie mit dem Radroutenplaner Hessen den Weg zwischen den beiden Koordinaten und fügen Sie den Kartenausschnitt der Route und das Höhenprofil in Ihre pdf-Datei ein. Zeichnen Sie in eine topographsiche Karte (siehe Tipp) die Luftlinie zwischen den beiden Koordinaten ein und zeichnen Sie entlang dieser ein Höhenprofil. Fügen Sie die Skizze Ihrer Luflinie und das zugehörige Höhenprofil in Ihre PDF-Datei ein. Begründen Sie die Unterschiede in ca. 3 Sätzen.

Umfang: 3 Seiten in Ihrer PDF-Datei.

{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L3:</h4>
  {{ ex-1-L3 | markdownify }}
</div>

**Tipp:** Höheninformationen können Sie analogen topographischen oder auch digitalen Karten entnehmen. (Für digitales Arbeiten eignet sich z.B. [OpenTopoMap](https://opentopomap.org/) ). Falls Sie keine topographische Papier-Karte zur Hand haben können Sie mit wenigen Klicks z.B. mit dem Webtool  [inkatlas](https://inkatlas.com/create/) eine maßstäbliche topographische Karte auf der Grundlage von OpenTopoMap erzeugen und ausdrucken.
{: .notice--info}
