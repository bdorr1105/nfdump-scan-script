# nfdump-scan-script
#!/bin/bash

#########Variables Section##########
RED='\033[0;31m'
NOCOLOR='\033[0m'
##################################
echo "############################"
echo "#                          #"
echo "#     nfdump scanner       #"
echo "#     by: noob coder       #"
echo "#                          #"
echo "############################"
echo " "
echo "Choose which nfdump scan you want to run below"
###### Enter selection appears below the choices #######
echo " "
PS3='Enter Selection: '
scans=("Top 10 IP Address and Destination Ports ordered bytes by ip" "Top 10 source IP addresses ordered bytes by ip" "Top 10 source IP by protocol" "Top 10 Flows by source and destination" "Quit")
select hunt in "${scans[@]}"; do
    case $hunt in
        "Top 10 IP Address and Destination Ports ordered bytes by ip")
            clear
            echo -e "${RED} The command ran was --> nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -s ip/bytes -n 10${NOCOLOR}"
            nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -s ip/bytes -s dstport:p/bytes -n 10
	    # optionally call a function or run some code here
            echo " "
            echo "1. Top 10 IP Address and Destination Ports ordered bytes by ip "
            echo "2. Top 10 source IP addresses ordered bytes by ip"
            echo "3. Top 10 source IP by protocol"
            echo "4. Top 10 Flows by source and destination"
            echo "5. Quit"
            echo " "
            ;;
        "Top 10 source IP addresses ordered bytes by ip")
            clear
            echo -e "${RED}The command ran was --> nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -s srcip/bytes${NOCOLOR}"
	        nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -s srcip/bytes
            echo " "
            echo "1. Top 10 IP Address and Destination Ports ordered bytes by ip "
            echo "2. Top 10 source IP addresses ordered bytes by ip"
            echo "3. Top 10 source IP by protocol"
            echo "4. Top 10 Flows by source and destination"
            echo "5. Quit"
            echo " "
            ;;
        "Top 10 source IP by protocol")
            clear
            echo -e "${RED}The command ran was -- >  nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -O bytes -A srcip,proto,dstport -n 10 -o 'fmt:%sa -> %pr %dp %byt %fl'${NOCOLOR}"
            nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -O bytes -A srcip,proto,dstport -n 10 -o 'fmt:%sa -> %pr %dp %byt %fl'
	    # optionally call a function or run some code here
            echo " "
            echo "1. Top 10 IP Address and Destination Ports ordered bytes by ip "
            echo "2. Top 10 source IP addresses ordered bytes by ip"
            echo "3. Top 10 source IP by protocol"
            echo "4. Top 10 Flows by source and destination"
            echo "5. Quit"
            echo " "
	    ;;
        "Top 10 Flows by source and destination")
            clear
            echo -e "${RED}The command ran was -- >  nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -a -O tstart -n 10${NOCOLOR}"
            nfdump -R /root/path/of/your/ncapd.xxxx/logs/ -a -O tstart -n 10
            # optionally call a function or run some code here
            echo " "
            echo "1. Top 10 IP Address and Destination Ports ordered bytes by ip "
            echo "2. Top 10 source IP addresses ordered bytes by ip"
            echo "3. Top 10 source IP by protocol"
            echo "4. Top 10 Flows by source and destination"
            echo "5. Quit"
            echo " "
            #break
            ;;
	"Quit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
