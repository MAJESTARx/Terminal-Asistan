#!bin/bash
#!bin/sh
#created by MAJESTAR
banner(){	
echo""
figlet -c -f Bloody "Terminal Asistan" | /usr/games/lolcat         
echo -e '\033[0;94m -=[  Terminal Asistanım  ]=-
 -=[Created By MAJESTAR]=- 
 '
}
banner
echo -e '
\e[31m[1]\e[32m Paketlerin Listesini Güncelle 	        \e[31m[5]\e[32m Gerekli Temel Kali Linux Ek Paketlerini İndir
\e[31m[2]\e[32m Linux Paketlerini  Yükselt                 \e[31m[6]\e[32m İşletim sistemini güncelle 	
\e[31m[3]\e[32m Yerel ve Public İp Adresimi Sorgula        \e[31m[7]\e[32m TÜm Python Paketlerini YÜkle
\e[31m[4]\e[32m Terminal Geçmişini Temizle   

                                 \e[31m[0] Önceki Menü
'
read -p  "İşlem Numarası: " islem
if [[ $islem == 1 || $islem == 01 ]]; then
echo -e ' \e[35m Paketler Güncelleniyor ... 
işlem bittiği zaman  Tekrardan otomatik olarak bu menü açılacaktır... ' 
sleep 1 
sudo apt-get update -y 
clear
echo "Paket Listeleri GÜncellendi"
sleep 2
bash /bin/Terminal-Asistan/menuler/lm.sh 


elif [[ $islem == 2 || $islem == 02 ]]; then
sleep 1 
echo"Paketleriniz Yükseltiliyor Lütfen Sabırlı Olun"
sudo apt-get upgrade -y
echo "Tüm Paketler Yükseltildi"
bash /bin/Terminal-Asistan/menuler/lm.sh


elif [[ $islem == 3 || $islem == 03 ]]; then
sleep 1 
echo""
echo "YEREL (LOCAL) İP ADRESİNİZ"
hostname -I | awk '{print $1}'
sleep 1
echo""	
echo "PUBLİC ( DIŞ AĞ İP ADRESİNİZ ) "
curl icanhazip.com
sleep 5
bash /bin/Terminal-Asistan/menuler/lm.sh


elif [[ $islem == 4 || $islem == 04 ]]; then
echo""
echo "Not: Dosyaya zarar vermemek adına silme işlemini otomatkleştirmedim "
echo ""
sleep 1 
echo "Not 2 : Açılacak not defterinde tüm kelimeleri silin ve ctrl + s tuşuna basın geçmiş silinecektir "
sleep 6
leafpad ~/.zsh_history
sudo bash /bin/Terminal-Asistan/menuler/lm.sh


elif [[ $islem == 5 || $islem == 05 ]]; then
apt list install -y
echo " İşlem tamamlandı "
sudo bash /bin/Terminal-Asistan/menuler/lm.sh

elif [[ $islem == 6 || $islem == 06 ]]; then
sudo apt install -f -y  
sudo apt dist-upgrade -y
echo " İşlem bitti "
sudo bash /bin/Terminal-Asistan/menuler/lm.sh
#created by MAJESTAR
elif [[ $islem == 7 || $islem == 07 ]]; then
apt install python-dev-is-python3 -y
apt install python2-dev -y
pip install --upgrade pip  -y 
pip freeze > /bin/Terminal-Asistan/menuler/pypacks.txt
pip install -r /bin/Terminal-Asistan/menuler/pypacks.txt
echo " İşlem tamamlandı "
sudo bash /bin/Terminal-Asistan/menuler/lm.sh

elif [[ $islem == 0 || $islem == 00 ]]; then
sudo bash Asistan

else
echo -e '\033[36;40;1m Girdiğniz İşlem Numarasını Kontrol Ediniz....'	
	sleep 1
	clear 
	sudo bash /bin/Terminal-Asistan/menuler/lm.sh
fi
#created by MAJESTAR