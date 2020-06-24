---
title: A02 | Raummodellierung
toc: true
header:
  image: /assets/images/02-splash.jpg
  image_description: "Blick ins Lahntal mit Grünlandwirtschaft, Baustelle für Stromtrassen und Regenbogen."
  caption: "Foto: T. Nauss / CC0"

panel1:  
    image_path: /assets/images/exam/Stuttgart2008.jpeg
    title: "Stuttgart 2008"
    image_path: /assets/images/exam/Stuttgart2015.jpeg
    title: "Stuttgart 2015"

panel3:  
  - url: https://w.wiki/Qvs
    image_path: https://en.wikipedia.org/wiki/Rural_area#/media/File:Barossa_Valley_South_Australia.jpg
    title: "kommt noch, [Presse03](https://w.wiki/Qvs) / CC BY-SA via commons.wikimedia.org"


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



## Aufgabe 01-1: Lärm- und Luftverschmutzung in Marburg

In den neueren Ausgaben des Diercke Atlas’ findet sich eine Karte zur Verkehrsbelastung in Stuttgart. [Hier finden Sie die Versionen der Karte von 2008 und 2015](https://ilias.uni-marburg.de/goto.php?target=fold_1924576&client_id=UNIMR).

{% include gallery id="panel1"  caption= "Stuttgart 2008 & 2015" %}


## Aufgabenstellung ex-1-L1: Kartenbeschreibung
{% capture ex-1-L1 %}
Was können Sie den Karten entnehmen? Beschreiben Sie die beiden Karten übersichtsartig in max. 10 ganzen Sätzen. Bewerten Sie die Art der Darstellung des Straßenlärms und der Luftbelastung in drei Sätzen.


Umfang: 1 Seite in Ihrer PDF-Datei.

{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L1:</h4>
  {{ ex-1-L1 | markdownify }}
</div>

## Aufgabenstellung ex-1-L2: Güte der Karte
{% capture ex-1-L2 %}
Schätzen Sie die Aussagekraft und Belastbarkeit der Luftbelastung in der Karte ein. Nutzen Sie hierfür die Auskuft des [LUBW](https://udo.lubw.baden-wuerttemberg.de/public/api/processingChain?ssid=7b886373-2c8b-4e06-88a4-93900826fdc4&selector=luftmessdaten.meros%3Ameros_z_luft_vergleich_messstation_ueber_nmc.sel).


Umfang: 1 Seite in Ihrer PDF-Datei.


{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L2:</h4>
  {{ ex-1-L2 | markdownify }}
</div>

## Aufgabenstellung ex-1-L3: Raumabstraktion
{% include gallery id="panel2"  caption= "Foto: [Weinanbau in Australien](https://en.wikipedia.org/wiki/Rural_area#/media/File:Barossa_Valley_South_Australia.jpg) Luis Roving / CC BY-2.0 via commons.wikimedia.org" %}


{% capture ex-1-L3 %}

Erfassen Sie folgende Kategorien
* Landnutzung (in Form von Landnutzungsarten),
* Straßennetz und
* Bebauungsfläche in einer Handskizze.

1. Erstellen Sie die Skizze des im Luftbild abgebildeten Raumausschnitts unter Berücksichtigung der geforderten Kategorien. Fassen Sie in Ihrer Skizze die Kategorien räumlich in geeigneter Weise zusammen.
1. Schreiben Sie in Stichpunkten Ihre Vorgehensweise und die von Ihnen gemachten Abstraktionsschritte auf.

Umfang: 1 Seite in Ihrer PDF-Datei.

{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung ex-1-L3:</h4>
  {{ ex-1-L3 | markdownify }}
</div>
