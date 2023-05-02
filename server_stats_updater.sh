#! /bin/bash

destination=$1
stats=$(echo "CPU=`LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}'`% RAM=`free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }'` `vcgencmd measure_temp` `uptime -p`")

sed -i -E "s/Stats:(.*)/Stats: $stats/" $destination
