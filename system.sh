hname=$(hostname)
os=$( uname -o)
kernel=$(uname -r)
systemname=$(uname -s)
runtime=$(uptime -p)
archi=$(uname -m)
d=$(date)
echo "=======SYSTEM INFORMATIONS======"
echo " Hostname = $hname"
echo " Operating System = $os"
echo " architecture =$archi"
echo " System name = $systemname"
echo " KERNEL = $kernel"
echo " System Runtime = $runtime"

echo " Date = $d"


