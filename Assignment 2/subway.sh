#!/bin/bash

#wget -O schedule.html "http://mon.ruter.no/SisMonitor/Refresh?stopid=3010370&computerid=acba4167-b79f-4f8f-98a6-55340b1cddb3&isOnLeftSide=true&blocks=&rows=&test=&stopPoint=" 
#awk  -F '[<>]' '/<th / { gsub(/<b>/, ""); sub(/ .*/, "", $3); print $3} ' schedule.html
#awk  -F '[<>]' '/<td / { gsub(/<b>/, ""); sub(/ .*/, "", $3); print $3} ' schedule.html
#awk -F "</*tr>|</*td>" '/<\/*t[dr]>.*[A-Z][A-Z]/ { print  $0 }' schedule.html
html2text schedule.html | column -ts '|'
sleep 3000