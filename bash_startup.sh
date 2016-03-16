let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((${upSeconds}%60))
let mins=$((${upSeconds}/60%60))
let hours=$((${upSeconds}/3600%24))
let days=$((${upSeconds}/86400))
UPTIME=`printf "%d days, %02dh%02dm%02ds" "$days" "$hours" "$mins" "$secs"`

# get the load averages
read one five fifteen rest < /proc/loadavg

echo "$(tput setaf 2)
   .~~.   .~~.    `date +"%A, %e %B %Y, %r"`
  '. \ ' ' / .'   `uname -srmo`$(tput setaf 1)
   .~ .~~~..~.    Free Disk Space....: `df -Pk | grep -E '^/dev/root' | awk '{ print $4 }' | awk -F '.' '{ print $1/1024 }'`M on /dev/root
  : .~.'~'.~. :   Uptime.............: ${UPTIME}
 ~ (   ) (   ) ~  Memory.............: `cat /proc/meminfo | grep MemFree | awk {'print $2'}`kB (Free) / `cat /proc/meminfo | grep MemTotal | awk {'print $2'}`kB (Total)
( : '~'.~.'~' : ) Load Averages......: ${one}, ${five}, ${fifteen} (1, 5, 15 min)
 ~ .~ (   ) ~. ~  Running Processes..: `ps ax | wc -l | tr -d " "`
  (  : '~' :  )   IP Addresses.......: LAN `/sbin/ifconfig eth0 2>/dev/null | /bin/grep "inet addr" | /usr/bin/cut -d ":" -f 2 | /usr/bin/cut -d " " -f 1`   WLAN `wget -q -O - http://icanhazip.com/ | tail`
   '~ .~~~. ~'    Weather............: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?locCode=55414" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2 \3, \1/p'`
       '~'        CPU Model..........: `cat /proc/cpuinfo | grep  -m 1 --ignore-case "model name"| grep -oP '(?<=: ).*'`
$(tput sgr0)"
