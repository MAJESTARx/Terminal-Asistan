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
\e[31m[1]\e[32m Şekilli Yazı Yazdırma Teması 1 (Basit,Türkçe Karakter Desteği Yok)    
\e[31m[2]\e[32m Şekilli Yazı Yazdırma Teması 2 (Renkli,Türkçe Karakter Desteği Var)                     
\e[31m[3]\e[32m İnek Temalı Yazı Yazdırma ( TÜrkçe Karakter Desteği Var )
\e[31m[4]\e[32m Matrix Temasını Başlat (Yeşil Kayan Yazılar)            	

       
                       \e[31m[0] Önceki Menü

'
read -p  "İşlem Numarası: " islem

if [[ $islem == 1 || $islem == 01 ]]; then
read -p "Lütfen Yazdırmak İstediğiniz Yazıyı Girin ( Türkçe karakter kullanmayın ): " fg
sleep 2
echo ""
echo ""
figlet $fg
sleep 2
bash /bin/Terminal-Asistan/menuler/em.sh

elif [[ $islem == 2 || $islem == 02 ]]; then
echo " 1 -) Metal Temalı Yazı"
echo " 2 -) Karışık Renkli Yazı"
echo " 3 -) Kutu içinde Yazı "
echo ""
read -p "Hangi Temayı Kullanmak istiyorsunuz ? : " sc
     if [[ $sc == 1  || $sc == 01 ]]; then
               read -p "Lütfen Yazdırmak İstediğiniz Yazıyı Girin ( Türkçe karakter kullanmayın ) : " t
               toilet -f big -F metal $t
                 sleep 4 
     bash /bin/Terminal-Asistan/menuler/em.sh
     elif [[ $sc == 2 || $sc == 02 ]]; then
               read -p "Lütfen Yazdırmak İstediğiniz Yazıyı Girin ( Türkçe karakter kullanmayın ) : " t2
               toilet -f big -F gay $t2
                 sleep 4 
     bash /bin/Terminal-Asistan/menuler/em.sh
     elif [[ $sc == 3 || $sc == 03 ]]; then
               read -p "Lütfen Yazdırmak İstediğiniz Yazıyı Girin ( Türkçe karakter kullanmayın ) : " t3
               toilet -f big -F border $t3
                 sleep 4 
     bash /bin/Terminal-Asistan/menuler/em.sh
     fi
     sleep 2 
     bash /bin/Terminal-Asistan/menuler/em.sh
elif [[ $islem == 3 || $islem == 03 ]]; then
	read -p "Yazdırmak istediğiniz Yazıyı girin : " ct
     /usr/games/cowsay $ct
     sleep 3
 bash /bin/Terminal-Asistan//menuler/em.sh
elif [[ $islem == 4 || $islem == 04 ]]; then
     clear
     echo "NOT : MATRİX TEMASI AÇILACAKTIR EĞER DURDURMAK İSTERSENİZ CTRL VE C TUŞUNA AYNI ANDA BASMANIZ YETERLİ OLACAKTIR  "
	sleep 6
     cmatrix
     clear
     bash /bin/Terminal-Asistan/menuler/em.sh
elif [[ $islem == 0 || $islem == 00 ]]; then
sudo bash Asistan
else
		echo -e '\033[36;40;1m Girdiğniz İşlem Numarasını Kontrol Ediniz....'	
		sleep 3
		bash /bin/Terminal-Asistan/menuler/em.sh
     fi
#coded by MAJESTAR