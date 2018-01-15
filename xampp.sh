#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root, use sudo buddy!" 
   exit 1
else
echo "###########################"
echo "#Powered By Amit Poonia ;)#"
echo "###########################"
echo ""
echo "Which PHP Version Xampp you want to use?"
echo -e "1) Xampp with PHP 7.xx \n2) Xampp with PHP 5.xx \n"


read n
case $n in
    1) if [ -d /opt/lampp5 ]; then
       echo -e "\nYou're Already on Xampp with PHP 7.xx kiddo!\nLet me start it for you..\n" && /opt/lampp/lampp start 
       elif [ -d /opt/lampp ]; then 
       /opt/lampp/lampp stop && mv /opt/lampp /opt/lampp5 && mv /opt/lampp7 /opt/lampp && echo -e "\n\nYou're now Switched to Xampp with PHP 7.xx\nHold a sec. while I start Xampp 7.xx for you..\n\n" && /opt/lampp/lampp start
       fi;;
    2) if [ -d /opt/lampp7 ]; then
       echo -e "\nYou're Already on Xampp with PHP 5.xx kiddo!\nLet me start it for you..\n" && /opt/lampp/lampp start
       elif [ -d /opt/lampp ]; then
       /opt/lampp/lampp stop && mv /opt/lampp /opt/lampp7 && mv /opt/lampp5 /opt/lampp && echo -e "\n\nYou're now Switched to Xampp with PHP 5.xx\nHold a sec. while I start Xampp 5.xx for you..\n\n" && /opt/lampp/lampp start
       fi;;
    *) echo -e "\n\nHired a Gorilla for pressing keys??";;
esac
fi