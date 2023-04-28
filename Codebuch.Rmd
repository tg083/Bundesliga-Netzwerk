---
title: "Codebuch"
author: "Timo Gotsch, Thomas Kellermann, Niclas Ketterer, Andrej Plantikow, Moritz Wagner"
date: "2023-04-28"
output: html_document
---

### Datensatz Bundesliga-Netzwerk

Codebuch-Stand vom 28.04.2023, erstellt von Timo Gotsch, Thomas Kellermann, Niclas Ketterer, Andrej Plantikow und Moritz Wagner


### Edgelist und Nodelist sind seperat auf diesem GitHub-Repository aufgeführt.

Das Netzwerk ist ein *ungerichtetes two-mode-Netzwerk*. 


### EDGE-Attribute
####	Grundregel: Die Edgelist darf pro Spalte immer nur einen Wert enthalten. Bis auf die ID idealerweise numerisch codiert (als Zahl).																								


**from**    
definiert den Sender in gerichteten Netzwerken. Entspricht ID in der Nodelist. Keine Sonderzeichen, nur ein Wort

**to**    
definiert den Empfänger in ungerichteten Netzwerken. Entspricht ID in der Nodelist. Keine Sonderzeichen, etc. 			

**relation**  
Art der Beziehung:    
1 = *Spieler zum Jugendverein*    
2 = *Spieler zum aktueller Verein*    
3 = *Verein zur Liga*   
4 = *Spieler zum Debutprofiverein*    



### NODE-Attribute  
#### Grundregel: die IDs der Nodelist müssen mit den IDs der Edgelist komplett übereinstimmen. Ausprägungen der Attribute in der Regel numerisch definieren.

**id**  
eindeutige Identifikation jedes einzelnen Knotens (vertex), benutzt wurden:   
Bei Spielern: die Initalien des jeweils codierten Vereins in Kombination mit der Rückennummer.    
Bei Vereinen: eine eindeutig zuweisbare Abkürzung.    
Bei der Bundesliga: bl.

**name**    
Name oder Bezeichnung des Knotens. 																								

**type**    
Art des Knotens:    
1 = *Spieler*
2 = *Verein*    
3 = *Liga*    
4 = *Erstes Profiteam*

**club**    
Bei Spielern: aktueller Verein, Stand 31.1.2023   
Bei Vereinen: dieselbe Bezeichnung, um sie mit den Spielerknoten anzeigen zu lassen

**youth**  
Bei Spielern: Verein, von dem der Spieler den Sprung in den Herrenbereich geschafft hat   
Bei Vereinen: dieselbe Bezeichnung, um sie mit den Spielerknoten anzeigen zu lassen

**debut**   
Bei Spielern: Verein, bei dem der Spieler sein Profidebut gegeben hat
Bei Vereinen: dieselbe Bezeichnung, um sie mit den Spielerknoten anzeigen zu lassen

**nation**    
Bei Spielern: Land, in dem ihr Verein spielt    
Bei Vereinen: Land, in dem der Verein in der Liga spielt

**peakvalue**   
definiert den höchsten Marktwert, den ein Spieler in seiner Karriere erreicht hat:    
1 = 0-2,5 Mio.    
2 = 2,5-5   
3 = 5-7,5   
4 = 7,5-10    
5 = 10-15   
6 = 15-20   
7 = 20-25   
8 = 25-30   
9 = 30-40   
10 = 40-50    
11 = 50-60    
12 = 60+    

**league**    
Bei Spielern: definiert mit 1, dass ein Spieler in der Bundesliga spielt    
Bei Vereinen: definiert, ob ein Verein in der Bundesliga ist oder nicht:
1 = Verein    
2 = Jugendverein

