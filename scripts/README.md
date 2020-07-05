## Überblick Skripte
1. Den Ordner mit den heruntergeladenen Abgaben in den gleichen Ordner bewegen, in dem diese Skripte liegen
1. Ordner entsprechend der Unit benennen (z.B. `Lerneinheit_01` ...)
1.  Skript `pdf_split_merge_check.R` öffnen, Pfade anpassen und Funktionen ausführen
    * `split_pdfs` splittet alle heruntergeladenen Abgaben in die einzelnen Tasks auf
    * `split_pdf` gibt eine Liste mit Namen und Grund aus, falls ein Studen einen Fehler im Abgabeformat hat (zu wenig/ zu viele Seiten; kein PDF abgegeben; nicht auf jeder Seite den Namen eingetragen (**experimentell**; muss extra aktiviert werden)
    * `merge_pdfs` fügt die gesplitteten PDFs zu gemeinsamen PDFs für jeden Task zusammen
    * `similarity_check` überprüft innerhalb der zusammengefügten PDFs auf Ähnlichkeiten zwischen verschiedenen Abgaben und gibt Listen aus, anahnd derer eine manuelle Überprüfung durchgeführt werden kann
1. `meko_wordclouds` erstellt Wordclouds aus allen zu einem einzelnen Task eingereichten Abgaben. 
