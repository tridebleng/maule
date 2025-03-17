#!/bin/bash

# Code Color
NC='\e[0m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
PB='\e[35;1m'
DBB='\033[0;36m'
WB='\e[39;1m'
RW='\e[41;1m'
GW='\e[42;1m'
BW='\e[44;1m'
PW='\e[45;1m'
DBW='\e[46;1m'
WW='\e[47;1m'
DB='\e[90;1m'

# Banner
function banner() {
   clear
   echo -e ""
   echo -e "${RB}    ᴀᴜᴛʜᴏʀ    ${NC}"
   echo -e "${GB}    _  _ ____ ____ _  _ ___  ____ ____ _  _ ${NC}" | lolcat
   echo -e "${GB}    |__| |__| |    |_/  |  \ |___ |___ |\/| ${NC}" | lolcat
   echo -e "${GB}    |  | |  | |___ | \_ |__/ |___ |___ |  | ${NC}" | lolcat
}

# Info Script
function val_user() {
   date_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
   date=$(date +"%Y-%m-%d" -d "$date_server")
   Ip=$(cat /var/tmp/.ip)
   Exp=$(cat /var/tmp/.izin_ip | grep $Ip | cut -d ' ' -f 3)
   User=$(cat /var/tmp/.izin_ip | grep $Ip | cut -d ' ' -f 2)
   d2=$(date -d "$date" +%s)
   d1=$(date -d "$Exp" +%s)
   dayleft=$(( (d1 - d2) / 86400 ))
   Latest=$(cat /var/tmp/.update_script | grep v | awk '{print $2}')
   Update=$(cat /root/.update | awk '{print $2}')
   if [[ $Update == $Latest ]]; then
       Version="${GB}   ʟᴀᴛᴇꜱᴛ${NC}"
   else
       Version="${RB}   ᴜᴘᴅᴀᴛᴇ${NC}"
   fi
   if [[ $User == "" ]]; then 
       echo -e "${GB}    ┌───────────────────────────────────────┐${NC}" | lolcat
       echo -e "${WB}      ꜱᴄʀɪᴘᴛ :${NC} ${GB}ꜰʀᴇᴇ${NC}         ${BB}ᴠᴇʀꜱɪᴏɴ${NC} : ${YB}$Update${NC}"
       echo -e "${WB}      ᴜꜱᴇʀ   :${NC} ${PB}ꜰʀᴇᴇ${NC}            ${WB}ꜱᴛᴀᴛᴜꜱ${NC}"
       echo -e "${WB}      ᴇxᴘɪʀᴇ :${NC} ${RB}ᴜɴʟɪᴍɪᴛᴇᴅ${NC}    $Version"
       echo -e "${GB}    └───────────────────────────────────────┘${NC}" | lolcat
   else
       echo -e "${GB}    ┌───────────────────────────────────────┐${NC}" | lolcat
       echo -e "${WB}      ꜱᴄʀɪᴘᴛ :${NC} ${GB}ᴘʀᴇᴍɪᴜɴ${NC}      ${BB}ᴠᴇʀꜱɪᴏɴ${NC} : ${YB}$Update${NC}"
       echo -e "${WB}      ᴜꜱᴇʀ   :${NC} ${PB}$User${NC}        ${WB}ꜱᴛᴀᴛᴜꜱ${NC}"
       echo -e "${WB}      ᴇxᴘɪʀᴇ :${NC} ${RB}$dayleft ᴅᴀʏꜱ${NC}      $Version"
       echo -e "${GB}    └───────────────────────────────────────┘${NC}" | lolcat
   fi
}

# Validation Access Script

# Check Vmess WS
function cek-vmessws() {
    NUMBER_OF_CLIENTS=$(grep -c -E "^###@& " "/usr/local/etc/xray/config.json")
    if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
        banner
        val_user
        echo -e "    ${BB}┌───────────────────────────────────────┐${NC}" | lolcat
        echo -e "    ${WB}    ──── [ ᴠᴍᴇꜱꜱ ᴡꜱ ᴜꜱᴇʀ ʟᴏɢɪɴ ] ────     ${NC}" | lolcat
        echo -e "    ${BB}└───────────────────────────────────────┘${NC}" | lolcat
        echo -e "    ${RB}   ʏᴏᴜ ᴅᴏɴᴛ ʜᴀᴠᴇ ᴀɴʏ ᴇxɪꜱᴛɪɴɢ ᴄʟɪᴇɴᴛꜱ!    ${NC}"
        echo -e "    ${BB} ────────────────────────────────────────${NC}" | lolcat
        echo -e ""
        read -n 1 -s -r -p "     ᴘʀᴇꜱꜱ ᴀɴʏ ᴋᴇʏ ᴛᴏ ʙᴀᴄᴋ ᴏɴ ᴍᴇɴᴜ ᴠᴍᴇꜱꜱ ᴡꜱ"
        menu-vmessws
    fi
    banner
    val_user
    echo -e "    ${BB}┌───────────────────────────────────────┐${NC}" | lolcat
    echo -e "    ${WB}    ──── [ ᴠᴍᴇꜱꜱ ᴡꜱ ᴜꜱᴇʀ ʟᴏɢɪɴ ] ────     ${NC}" | lolcat
    echo -e "    ${BB}└───────────────────────────────────────┘${NC}" | lolcat
    echo -n > /tmp/other.txt
    data=( `cat /usr/local/etc/xray/config.json | grep '###@&' | cut -d ' ' -f 2 | sort | uniq`);
    for akun in "${data[@]}"; do
        echo -n > /tmp/ipxray.txt
        data2=( `cat /var/log/xray/access.log | tail -n 100 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq`);
        for ip in "${data2[@]}"; do
            jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 100 | cut -d " " -f 3 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | sort | uniq)
            if [[ "$jum" = "$ip" ]]; then
                echo "$jum" >> /tmp/ipxray.txt
            else
                echo "$ip" >> /tmp/other.txt
            fi
            jum2=$(cat /tmp/ipxray.txt)
            sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
        done
        jum=$(cat /tmp/ipxray.txt)
        if [[ -z "$jum" ]]; then
            echo -ne
        else
            jum2=$(cat /tmp/ipxray.txt | nl)
            lastlogin=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 50 | cut -d " " -f 2 | tail -1)
            echo -e "    ${BB} ᴜꜱᴇʀɴᴀᴍᴇ :${NC} ${GB}${akun} ${NC}"
            echo -e "    ${RB} ʟᴀꜱᴛ ʟᴏɢɪɴ ${NC}: ${YB}${lastlogin} ᴡɪʙ${NC}"
            echo -e "    ${BB} ɪᴘ :${NC}"
            echo -e "${GB}$jum2${NC}";
            echo -e "    ${BB} ────────────────────────────────────────${NC}" | lolcat
        fi
        rm -rf /tmp/ipxray.txt
    done
    rm -rf /tmp/other.txt
    read -n 1 -s -r -p "     ᴘʀᴇꜱꜱ ᴀɴʏ ᴋᴇʏ ᴛᴏ ʙᴀᴄᴋ ᴏɴ ᴍᴇɴᴜ ᴠᴍᴇꜱꜱ ᴡꜱ"
    menu-vmessws
}
val_script
cek-vmessws
