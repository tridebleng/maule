#!/bin/bash
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
# Getting
export CHATID="5795571992"
export KEY="6351704520:AAEG3kwRGOUT4ta1e_q904v1zd-NtLFdXLE"
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/tridebleng/permission/main/ipmini"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Arta1ove"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6283162336146"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
clear
#Domain
domain=$(cat /etc/xray/domain)

else
if [ "$Isadmin" = "Pro" ]; then
uis="${GREEN} ┌───────────────────────────────────────┐
   ꜱᴄʀɪᴘᴛ : PREMIUM         ᴠᴇʀꜱɪᴏɴ : $pak
   ᴜꜱᴇʀ   : $Name    ꜱᴛᴀᴛᴜꜱ
   ᴇxᴘɪʀᴇ : $sisa_hari       $update
 └───────────────────────────────────────┘ $NC"
else
uis="${RED} ┌───────────────────────────────────────┐
   ꜱᴄʀɪᴘᴛ : ꜰʀᴇᴇ         ᴠᴇʀꜱɪᴏɴ : $pak
   ᴜꜱᴇʀ   : $Name            ꜱᴛᴀᴛᴜꜱ
   ᴇxᴘɪʀᴇ : ᴜɴʟɪᴍɪᴛᴇᴅ       $update
 └───────────────────────────────────────┘ $NC"
fi
clear
echo -e "$uis"
#echo -e ""
echo -e " \e[32m┌───────────────────────────────────────┐${NC}" | lolcat
echo -e "            ═══[ ꜱꜱʜ ᴍᴇɴᴜ ]═══"                                       | lolcat
echo -e " \e[32m└───────────────────────────────────────┘${NC}" | lolcat
echo -e "   [1] ᴄʀᴇᴀᴛᴇ ᴀᴄᴄᴏᴜɴᴛ ꜱꜱʜ"
echo -e "   [2] ᴛʀɪᴀʟ ᴀᴄᴄᴏᴜɴᴛ ꜱꜱʜ"
echo -e "   [3] ᴇxᴛᴇɴᴅ ᴀᴄᴄᴏᴜɴᴛ ꜱꜱʜ"
echo -e "   [4] ᴅᴇʟᴇᴛᴇ ᴀᴄᴄᴏᴜɴᴛ ꜱꜱʜ"
echo -e "   [5] ᴄʜᴇᴄᴋ ᴜꜱᴇʀ ʟᴏɢɪɴ"
echo -e "   [6] List Member SSH Account ${GREEN}$ssh1 $NC"
echo -e ""
#echo -e " \e[32m┌───────────────────────────────────────┐${NC}" | lolcat
echo -e "   [x]   ʙᴀᴄᴋ ᴛᴏ ᴍᴇɴᴜ"
echo -e " \e[32m─────────────────────────────────────────${NC}" | lolcat
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; addssh ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; hapus ; exit ;;
4) clear ; renew ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
x) menu ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
