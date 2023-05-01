#!bin/bash
#!bin/sh
#Created by MAJESTAR
banner(){	
echo""
figlet -c -f Bloody "Terminal Asistan" | /usr/games/lolcat         
echo -e '\033[0;94m -=[  Terminal Asistanım  ]=-
 -=[Created By MAJESTAR]=- 
 '
}
banner
echo -e '
\e[32m NOT : İNDİRECEĞİNİZ MÜZİK VEYA VİDEO EN YÜKSEK KALİTEDE İNDİRİLECEKTİR 

\e[31m[1]\e[32m Youtubeden Mp3 İndirme     
\e[31m[2]\e[32m Youtubeden Video (MP4) İndirme                    
\e[31m[3]\e[32m Youtube Üzerinden Mp3 Olarak Playlist İndirme         	

                
                 \e[31m[0] Önceki Menü

'
read -p  "İşlem Numarası: " islem

if [[ $islem == 1 || $islem == 01 ]]; then
cd /usr/share/yt
read -p "MP3 OLARAK İNDİRMEK İSTEDİĞİNİZ VİDEONUN LİNKİNİ YAPIŞTIRIN : " link
youtube-dl -x --audio-format mp3 $link
echo""
echo                                                           " Müzik şu konuma indirilidi : /usr/share/yt " 
echo            " Masaüstündeki Dosya sistemi yazan şeye girin ardından usr ardından share ve ardıntan yt klasörüne gidin müzik ve videolarınız orada olacaktır  "
sleep 5
bash /bin/Terminal-Asistan/menuler/mv.sh 

elif [[ $islem == 2 || $islem == 02 ]]; then
cd /usr/share/yt
echo""
echo""
echo "BU HATAYI ALDIRMAYIN "
echo ""
read -p "VİDEO OLARAK İNDİRMEK İSTEDİĞİNİZ VİDEONUN LİNKİNİ YAPIŞTIRIN : " vlink
youtube-dl $vlink 
echo""
echo""
echo                                                    " Video şu konuma indirilidi : /usr/share/yt " 
echo            "Terminale cd ~ yazarak veya Masaüstündeki Ev Sembolü olan klasöre tıklayıp videonun indiği dizine gidebilirsiniz  "
sleep 5
bash /bin/Terminal-Asistan/menuler/mv.sh 
elif [[ $islem == 3 || $islem == 03 ]]; then
echo "NOT : PLAYLİST LİNKİNİ BULMAK İÇİN PLAYLİST'DE VİDEO OYNATILIRKEN PLAYLİSTİN SAĞ TARAFINDA MÜZİKLER VAR O KISMIN ÜSTÜNDEKİ BAŞLIĞA TIKLAYIP O KISIMDAKİ LİNKİ KOPYALAYIN "
sleep 2
cd /usr/share/yt
read -p "Playlist Linkini Yapıştırın: " pl
youtube-dl $pl
echo""
echo""
echo                                                            " Müzikler şu konuma indirilidi : /usr/share/yt " 
echo            " Masaüstündeki Dosya sistemi yazan dizine girin ardından usr ardından share ve ardıntan yt klasörüne gidin müzik ve videolarınız orada olacaktır  "
sleep 5
bash /bin/Terminal-Asistan/menuler/mv.sh 

elif [[ $islem == 0 || $islem == 00 ]]; then
sudo bash Asistan
else
echo -e '\033[36;40;1m Girdiğniz İşlem Numarasını Kontrol Ediniz....'	
	sleep 1
	clear 
	sudo bash /bin/Terminal-Asistan/menuler/mv.sh
fi
#Created by MAJESTAR