#!/bin/bash

#########Variables Section##########
RED='\033[0;31m'
NOCOLOR='\033[0m'
firewall_nat='x.x.x.x' # enter your firewall or router LAN gateway
firewall_nat='x.x.x.x'  #enter your public IP, you can google what is my ip to get this
scan1='Top 10 IP Address and Destination Ports ordered bytes by ip'
scan2='Top 10 IP address with a destination port of 80 and 443'
scan3='Top 10 source IP by protocol'
scan4='Top 10 Flows by source and destination'
command1='nfdump -R /path/to/your/root/netflow/logs/directory/ -s ip/bytes -s dstport:p/bytes -n 10'
command2="nfdump -R /path/to/your/root/netflow/logs/directory/ -c 10 'proto tcp and (dst port 80 or dst port 443) and not src host $firewall_lan and not src host $firewall_nat'"
command3="nfdump -R /path/to/your/root/netflow/logs/directory/ -O bytes -A srcip,proto,dstport -n 10 -o 'fmt:%sa -> %pr %dp %byt %fl'"
command4='nfdump -R /path/to/your/root/netflow/logs/directory/ -a -O tstart -n 10'
##################################
clear # clear the screen of all garbage for a clean experience
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
scans=("$scan1" "$scan2" "$scan3" "$scan4" "Quit")
select hunt in "${scans[@]}"; do
    case $hunt in
        $scan1)
            clear
            echo -e "${RED}The command ran was --> $command1${NOCOLOR}"
            #$command1
            # optionally call a function or run some code here
            mycommand1() {
                      ${command1}
            }
            mycommand1
            echo " "
            echo "1. $scan1"
            echo "2. $scan2"
            echo "3. $scan3"
            echo "4. $scan4"
            echo "5. Quit"
            echo " "
            ;;
        $scan2)
            clear
            echo -e "${RED}The command ran was --> $command2${NOCOLOR}"
            #$command2
            # Had to use a function with eval to get this to Run the Scan. The difference between this command and commands (1,4) is there are paratnheseis and single quotes
            mycommand2() {
                       eval ${command2}
            }
            mycommand2
            echo " "
            echo "1. $scan1"
            echo "2. $scan2"
            echo "3. $scan3"
            echo "4. $scan4"
            echo "5. Quit"
            echo " "
            ;;
        $scan3)
            clear
            echo -e "${RED}The command ran was -- >  $command3${NOCOLOR}"
            #$command3
            # optionally call a function or run some code here
            mycommand3() {
                       eval ${command3}
            }
            mycommand3
            echo " "
            echo "1. $scan1"
            echo "2. $scan2"
            echo "3. $scan3"
            echo "4. $scan4"
            echo "5. Quit"
            echo " "
            ;;
        $scan4)
            clear
            echo -e "${RED}The command ran was -- >  $command4${NOCOLOR}"
            #$command4
            # optionally call a function or run some code here
            mycommand4() {
                      ${command4}
            }
            mycommand4
            echo " "
            echo "1. $scan1"
            echo "2. $scan2"
            echo "3. $scan3"
            echo "4. $scan4"
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
