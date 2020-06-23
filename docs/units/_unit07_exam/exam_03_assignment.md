---
title: ex-2 | Datenaufbereitung und Kartenreflexion
toc: true
header:
  image: /assets/images/04-splash.jpg
  image_description: "Unübersichtlich beschriebene Universitätstafel"
  caption: "Foto: Wikimedia Commons / CC0"
  
panel1:  
    /assets/images/exam/Studis2013.jpeg
    title: "Studienanfängerinnen"  
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

In dieser Aufgabe sollen Sie die Daten in Graphiken und einer Karte darstellen und die Güte einer gebenen Karte refelktieren. 


## Aufgabe ex-2-L1: 

{% capture ex-2-L1 %}

Bitte fertigen Sie eine aussagekräftige Grafik an, aus der die Anzahl der Studienanfänger/innen insgesamt und der weibliche Anteil nach Bundesland hervorgeht. Daten zu Studienanfänger/innen finden Sie beim  [Statistischen Bundesamt](https://www-genesis.destatis.de/genesis/online?operation=previous&levelindex=2&levelid=1592926818401&levelid=1592926557205&step=1#abreadcrumb).

Umfang: 1 Seite in Ihrer PDF-Datei.
{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung 04-1-L1:</h4>
  {{ ex-2-L1 | markdownify }}
</div>

## Aufgabe ex-2-L2: Kartenerstellung

{% capture ex-2-L2 %}

{% include gallery id="panel1"  caption= "Studienanfänger/innen" %}
Bwerten Sie die abgebildete thematische Karte zu den Studeinanfänger/-innen in Deutschland im Wintersemester 2013/2014 im Hinblick auf den Sachbezug der dargestellten Daten. 

Umfang: 1 Seite in Ihrer PDF-Datei.

{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung 04-1-L2:</h4>
  {{ ex-2-L2 | markdownify }}
</div>


## Aufgabe ex-2-L3: Kartenerstellung

{% capture ex-2-L3 %}

Bitte fertigen Sie selbt eine aktuelle thematische Karten an, die eine geeignete kartographische Darstellungsform wählt. Sie dürfen alle für Sie verfügbaren Hilfsmittel dafür kombinieren.

Umfang: 3 Seite in Ihrer PDF-Datei.
{% endcapture %}

<div class="notice--success">
  <h4 class="no_toc">Aufgabenstellung 04-1-L3:</h4>
  {{ ex-2-L3 | markdownify }}
</div>
