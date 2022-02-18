#!/bin/bash
mrh2="\033[31;1m"
kun="\033[33m"
kunt="\033[33;1m"
ijo="\033[32m"
wet="\033[97;1m"
nat="\033[0m"
bir="\033[90;36m"
clear
echo -e "- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo -e "- Peringatan : \033[31mSebelum Masuk Anda Terlebih Dahulu Untuk Memasukkan Sebuah Kata Kunci Atau Password\033[0m"
echo ''
pass="Vsjskdkdkdkkdkdjfjfnfnnfnfncfkkcvfnfmf"
while [ "$user" != "$pass" ]
do
read -p "- NamaKamu : " nama;
read -p "- Password : " user;
done
clear
banner(){
echo -e "- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
}
menu(){
echo -e "- Hai!! Selamat Datang : \033[32m$nama\033[0m ♡"
echo ''
echo -e " 0. Ngehack Pack (\033[32mPrivate\033[0m)"
echo -e " 1. Ngelist Pack (\033[32mPrivate\033[0m)"
echo -e " 2. Checker Pack (\033[32mPrivate\033[0m)"
echo -e " 3. Remove And Add Pack (\033[32mPrivate\033[0m)"
echo -e " 4. Author (\033[32mOwner\033[0m)"
echo -e " 5. About (\033[32mKembali\033[0m)"
}
chose(){
echo -e ""
read -p "Choose Number:~$ " pilih;
case $pilih in
"0")
ngehack
;;
"1")
ngelist
;;
"2")
checker
;;
"3")
remove
;;
"4")
author
;;
"5")
cd  /sdcard/tes && python2 kunci.py
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
ngehack(){
clear
echo -e "\033[0m- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo ''
echo -e " 1. Wordpress Brute Force V²"
echo -e " 2. Back"
echo ''
read -p "Choose Number:~$ " pilih;
case $pilih in
"1")
echo -e "Peringatan : \033[31mhttps:// or http://\033[0m" 
read -p "Site~$ " url;
cd tes && python shjsakkakanabbabsnzbbx.py -t $url/wp-login.php -u admin --p wordlist.txt
;;
"2")
main
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
ngelist(){
clear
echo -e "\033[0m- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo ''
echo -e " 1. Domain Grabber With Page"
echo -e " 2. Domain Grabber With Date + Page"
echo -e " 3. Domain Grabber With Narget"
echo -e " 4. Mass Reverse Ip Unlimited V¹"
echo -e " 5. Mass Reverse Ip Unlimited V²"
echo -e " 6. Back"
echo ''
read -p "Choose Number:~$ " pilih;
case $pilih in
"1")
v1
;;
"2")
v2
;;
"3")
grab
;;
"4")
rev
;;
"5")
rev1
;;
"6")
main
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
v1(){
read -p "Start Page: " pek;
read -p "End Page: " topek;
read -p "Save In: " sv;
echo ' '
for((i=$pek;i<=$topek;i++))
do
cuk=$(curl -s "https://websitedetection.com/web-site-list-$i" -L | grep -oP '<a href="(.*?)" target="_blank" rel="nofollow">(.*?)</a>' | cut -d "<" -f2 | cut -d ">" -f2)
cu=$(echo "$cuk" | wc -l)
if [[ $cuk =~ '.' ]];
then
echo "$cuk" >> $sv
echo -e ${nat}"[${ijo}SUCCES${nat}] Succes Grabbed $cu Domain In Page $i"
else
echo -e ${nat} "[${mrh}FAILED${nat}] Failed Grabbed In Page $i"
fi
done
sleep 0.1
echo -e ${mrh}"${nat}[${kun}Result Save In $sv${nat}]"
}
v2(){
read -p "Date: " dt;
read -p "Page: " tgl;
read -p "To Page: " stgl;
read -p "Save In: " sv
echo ''
for((i=$tgl;i<=$stgl;i++))
do
c=$(curl -s "https://www.uidomains.com/browse-daily-domains-difference/$i" -L | grep -oP "<li>(.*?)</li>" | cut -d "<" -f2 | cut -d ">" -f2 | sed "s/A query limit of UNLIMITED domains per search. Free is only 200.//" | sed "s/Upload your own lists that no one sees.//" | sed "s/We believe we built the most customizable domain search tool.//" | sed "s/No logging of domains.//" | sed "s/Includes a 1 day trial//" | sed "s/Password Access//" | sed "s/Free Support//" | uniq)
cu=$(echo "$c" | wc -l)
if [[ $c =~ '.' ]];
then
echo "$c" >> $sv
echo -e ${ijo}"${nat}[${ijo}SUCCES${nat}] Get $cu Domain In Page $i"
else
echo -e ${mrh}"${nat}[${ijo}FAILED${nat}] Get Domain In Page $i"
fi
done
echo -e ${mrh}"${nat}[${kun}Result Save In $sv${nat}]"
}
grab(){
cd tes && bash gajsjsjbdanajiahshssb
}
rev(){
read -p "Input IP/Domain List: " ip;
read -p "Save In: " sv;
while read line; do
touch $sv
cu=$(curl -s "https://reverseip-tools.com/api?q=${line}" | sed 's/Succes//' | cut -d "[" -f2 | sed  's/,/\n/gI' | cut -d '"' -f2 | uniq)
c=$(echo "$cu" | wc -l)
if [[ $cu =~ '.' ]];
then
echo "$cu" >> $sv
echo -e "${nat}[${ijo}SUCCES${nat}] $line ~âž¤ $c Domain"
else
echo -e "${nat}[${mrh}FAILED${nat}] $line ${mrh}BAD${nat}"
fi
done < $ip
}
rev1(){
cd tes && python bajakamannanannazshjzjx.py
}
checker(){
clear
echo -e "\033[0m- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo ''
echo -e " 1. DA & PA Checker"
echo -e " 2. Wordpress CMS Detector"
echo -e " 3. Scan Subdomain"
echo -e " 4. Back"
echo ""
read -p "Choose Number:~$ " pilih;
case $pilih in
"1")
dapa
;;
"2")
cms
;;
"3")
scan
;;
"4")
main
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
dapa(){
echo -e ${mrh}"Using https:// or http://"${nat}
read -p "Input List: " list;
echo ''
while read line; do
c=$(curl --silent --data-urlencode "domain=$line" --data-urlencode "submit=Get+Website+Metrics" "https://www.countingcharacters.com/website-authority-checker")
if [[ $c ]];
then
d=$(echo $c | grep -Po "Domain Authority: <span style='color:#2d3436''>[0-9]*" | cut -d ">" -f2)
p=$(echo $c | grep -Po "Page Authority: <span style='color:#2d3436''>[0-9]*" | cut -d ">" -f2)
echo -e "${ijo}Site ${mrh}~ ${nat}$line | DA: ${kun}$d ${nat}| PA: ${kun}$p"
else
echo -e ${nat} "Site: $line ${mrh} FAILED!!!\n"
fi
done < $list
echo ''
}
cms(){
read -p "Input List: " wb;
while read line; do
wget --timeout=5 -qO- ${line}|grep 'wp-content/themes' >/dev/null 2>&1 &&
echo -e "${nat}[${ijo}WORDPRESS DETECTED${nat}] ${line}" ||
echo -e "${nat}[${mrh}WORDPRESS NO DETECTED${nat}] ${line}";
done < $wb
}
scan(){
cd tes && python bsnskaakmabxbzjwkansnx.py
}
remove(){
clear
echo -e "- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo ''
echo -e " 1. Remove Duplicate Line"
echo -e " 2. Remove Empty Line"
echo -e " 3. Mass Add http"
echo -e " 4. Mass Add https"
echo -e " 5. Back"
echo ""
read -p "Choose Number:~$ " pilih;
case $pilih in
"1")
duplikat
;;
"2")
kosong
;;
"3")
http
;;
"4")
https
;;
"5")
main
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
duplikat(){
read -p "Input File: " fil;
s=$(sort ${fil} | uniq)
echo "$s" > $fil
echo -e "${ijo}Done And Thank You${nat}"
}
kosong(){
read -p "Input File Name: " h;
sed -i '/^$/d' $h
echo -e "${ijo}Done And Thank You${nat}"
}
http(){
echo ''
echo -e ${mrh2} '\t  WARNING!!!!!'
echo -e "${ijo} Don't Save In The Same File!!!"
echo -e "${ijo} Jangan Menyimpan Di File Yang Sama!!!"${nat}
echo ''
read -p "Input File List: " lip;
read -p "Save In: " sv;
while read site; do
c=$(echo "http://$site")
echo $c >> $sv
done < $lip
echo -e "${ijo}Done And Thanks You"
}
https(){
echo ''
echo -e ${mrh2} '\t  WARNING!!!!!'
echo -e "${ijo} Don't Save In The Same File!!!"
echo -e "${ijo} Jangan Menyimpan Di File Yang Sama!!!"${nat}
echo ''
read -p "Input File List: " lip;
read -p "Save In: " sv;
while read site; do
d=$(echo "https://$site")
echo $d >> $sv
done < $lip
echo -e "${ijo}Done And Thanks You"
}
author(){
clear
echo -e "- Created By Asep-IT Ganz
- Email vakumhacker@gmail.com [${ijo}Tools Private Uct${nat}]\n"
echo ''
echo -e " 1. Author Name"
echo -e " 2. Contact Author"
echo -e " 3. Back"
echo ""
read -p "Choose Number:~$ " pilih;
case $pilih in
"1")
nama
;;
"2")
wa
;;
*)
echo -e $mrh "Pilih Yg Bener BebðŸ˜˜"
sleep 1
clear && main
;;
esac
}
nama(){
echo -e ${ijo} " Tools Ini Dibuat Oleh Asep-IT Ganz Orang Paling Ganteng Se Underground World"
}
wa(){
xdg-open http://wa.me/+62857942708206#?text=Bang+Lkey7+Ganteng,+Makasih+Toolsnya
main
}
main(){
clear
banner
menu
chose
}
main
