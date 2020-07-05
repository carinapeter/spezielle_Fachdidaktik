1. Den Ordner mit den heruntergeladenen Abgaben in den gleichen Ordner bewegen, in dem diese Skripte liegen
1. Ordner entsprechend der Unit-Nr. benennen (Lerneinheit_01; Lerneinheit_02; ...)
1.  Skript "pdf_split_merge_check.R" öffnen, Pfade anpassen und Funktionen ausführen
    * split_pdfs splittet alle heruntergeladenen Abgaben in die einzelnen tasks auf
    * split_pdf gibt eine Liste mit Namen und Grund aus, falls ein Studen einen Fehler im Abgabeformat hat (zu wenig/ zu viele Seiten; kein PDF abgegeben; nicht auf jeder Seite den Namen eingetragen (noch experimentell; muss extra aktiviert werden)
    * merge_pdfs fügt die gesplitteten PDFs zu gemeinsamen PDFs für jeden task zusammen
    * similarity_check überprüft innerhalb der zusammengefügten PDFs auf Ähnlichkeiten zwischen verschiedenen Abgaben und gibt Listen aus, mit denen manuell überprüft werden kann, ob tatsächlich nur abgeschrieben wurde
1. meko_wordclouds ermöglicht das erstellen von wordclouds aus allen zu einem einzelnen task eingereichten Abgaben. 
