#!/bin/bash
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
BURIQ () {
    curl -sS https://raw.githubusercontent.com/tridebleng/permission/main/ipmini > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/tridebleng/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/tridebleng/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/tridebleng/permission/main/ipmini | grep $MYIP | awk '{print $3}')
Isadmin=$(curl -sS https://raw.githubusercontent.com/tridebleng/permission/main/ipmini | grep $MYIP | awk '{print $4}')
fi


export sem=$( curl -s https://raw.githubusercontent.com/tridebleng/ali/main/versions)
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
#link izin ip vps
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
# Valid Script
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/tridebleng/permisson/main/ipmini"
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
if [ "$Isadmin" = "ON" ]; then
uis="${GREEN} ┌───────────────────────────────────────┐
   ꜱᴄʀɪᴘᴛ : PREMIUM         ᴠᴇʀꜱɪᴏɴ : $pak
   ᴜꜱᴇʀ   : $Name    ꜱᴛᴀᴛᴜꜱ
   ᴇxᴘɪʀᴇ : $sisa_hari       $update
 └───────────────────────────────────────┘ $NC"
else
uis="${RED} ┌───────────────────────────────────────┐
   ꜱᴄʀɪᴘᴛ : ꜰʀᴇᴇ         ᴠᴇʀꜱɪᴏɴ : $pak
   ᴜꜱᴇʀ   : ꜰʀᴇᴇ            ꜱᴛᴀᴛᴜꜱ
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
