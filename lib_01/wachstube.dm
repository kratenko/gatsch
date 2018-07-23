# Wachstube
Du bist in einer kleinen Kammer mit einem Holzstuhl und einem winzigen Tisch.
Ein Fensterchen blickt nach außen. Über eine Leiter geht es durch eine Falltür weiter nach oben.
Eine schmale Tür führt auf den Flur.

.sinn
  - horch: Du hörst den Wind pfeifen.
  - riech:
    - Riecht nach, naja?
    - $Der hält die Nase in die Luft.
.exits
  - osten: flur
  - hoch: ../oben/turm


# Tür (f) [/moebel/tuer]
.alias holztür, flurtür
.adjektiv hölzern
Ein hölzerner Türrahmen mit einer eben so hölzernen Tür.
.exit osten
.sinn
  - horch:
    - Nichts zu hören
    - $Der hält $sein(m) Ohr an $den(this).


# Falltür (f) [/moebel/tuer]
.exit hoch


# Stuhl (m) [/moebel/stuhl]


# Fenster (n)
Durch das Fenster überblickt man sehr gut die Rampe, die zum Haupttor führt.
.adjektiv klein


# Boden (n)
Der Boden besteht aus einfachen Holzbolen.
.sinn
  - tast: Glattgetreten von tausenden Füßen.


# Wand (f)
Die Wand besteht aus einfachen grauen Steinen.
Es hängt ein Schild dort.
.element erde(2)

## Schild (n)
.alias
holzschild, wandschild, tafel, wandtafel
Ein hölzernes Schild. Darauf stehen ein paar Worte in schwarzen Buchstaben geschrieben.
.sense
  - lies: Stets wachsam, stets bereit!
  - riech: Liecht leicht nach muffigem Holz.
  - tast: Das war sicher mal glatt, aber das ist lange her. So langsam gammelt das Holz weg.