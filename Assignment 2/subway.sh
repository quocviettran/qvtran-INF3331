#!/bin/bash
#Unfinished assignment

wget -O schedule.html "http://mon.ruter.no/SisMonitor/Refresh?stopid=3010370&computerid=acba4167-b79f-4f8f-98a6-55340b1cddb3&isOnLeftSide=true&blocks=&rows=&test=&stopPoint=" 

arg=$@

if [$1 = "--W" ] || [$2 = "--W" ]; then
	
fi

if [$1 = "Blindern" ] || [$2 = "Blindern" ]; then
	
fi

if [$1 = "--E" ] || [$2 = "--E" ]; then
	
fi

awk  -F '[<>]' '/<th / { gsub(/<b>/, ""); sub(/ .*/, "", $3); print $3} ' schedule.html
awk  -F '[<>]' '/<td / { gsub(/<b>/, ""); sub(/ .*/, "", $3); print $3} ' schedule.html

sleep 3000