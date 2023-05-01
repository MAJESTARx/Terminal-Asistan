#!bin/bash
#!bin/sh
#coded by MAJESTAR
banner(){	
echo""
figlet -c -f Bloody "Terminal Asistan" | /usr/games/lolcat         
echo -e '\033[0;94m -=[  Terminal Asistanım  ]=-
 -=[Created By MAJESTAR]=- 
 '
}
banner
echo -e '
\e[31m[1]\e[32m Dosya Kopyalama             \e[31m[3]\e[32m Dosya Silme
\e[31m[2]\e[32m Dosya Taşıma                \e[31m[4]\e[32m Dosya Ad Değiştirme           	
\e[31m[5]\e[32m Dosya Yetkilendirme         \e[31m[6]\e[32m Dosya Yetkisi Kaldırma  

                 

                  \e[31m[0] Önceki Menü
'
read -p  "İşlem Numarası: " islem

if [[ $islem == 1 || $islem == 01 ]]; then
	echo""
	echo -e ' \e[32m "Not : Taşıdığınız dosya sudo ile taşındığı için yetkisiz çalışmayacaktır yetki vermek için menüden 05 de bulunan yetki kısmına girin '
	echo""
read -p  " KOPYALAYACAĞINIZ ŞEY BİR KLASÖR MÜ E/H ? : " ch
          if [[ $ch == "E" || $ch == "e" ]]; then
          read -p "Kopyalanacak klasör adını girin ( uzantısı ile beraber örnek /Desktop/kopyalanacak-klasör) :" cp
          read -p "Hangi Dizine / Klasöre kopyalansın ( örnek /home/kali/Desktop  ) : " cp2
          sudo cp -r $cp $cp2
          echo " Dosya Kopyalandı "
          sleep 2
          bash /bin/Terminal-Asistan/menuler/di.sh
          else
          read -p "Kopyalanacak dosya adını girin ( uzantısı ile beraber örnek /Desktop/kopyalanacak-dosya.txt ) : " cpf
          read -p "Hangi Dizine / Klasöre kopyalansın ( örnek /home/kali/Desktop  ) : " cpf2
          sudo cp $cpf $cpf2
          echo " Dosya Kopyalandı "
          sleep 2
          bash /bin/Terminal-Asistan/menuler/di.sh
          fi


elif [[ $islem == 2 || $islem == 02 ]]; then
	echo -e ' \e[32m "Not : Taşıdığınız dosya sudo ile Taşındığı için yetkisiz çalışmayacaktır yetki vermek için menüden 05 de bulunan yetki kısmına girin '
          read -p "Taşınacak klasör veya dosya adını girin ( uzantısı ile beraber örnek /Desktop/taşınacak-dosya ) :" mv
          read -p "Hangi Dizine / Klasöre Taşınsın( örnek /home/kali/Desktop  ) : " mv2
          sudo cp -r $mv $mv2
          echo " Dosya Taşındı "
          sleep 2
          bash /bin/Terminal-Asistan/menuler/di.sh

elif [[ $islem == 3 || $islem == 03 ]]; then
read -p  "SİLECEĞİNİZ ŞEY BİR KLASÖR MÜ E/H ? : " chh
      if [[ $chh == "E" || $chh == "e" ]]; then
      read -p "Silinecek klasör adını girin ( uzantısı ile beraber örnek /Desktop/silinecek-klasör ) : " rm
      sudo rm -rf $rm 
      else
      read -p "Silinecek dosya adını girin ( uzantısı ile beraber örnek /Desktop/silinecek-dosya.txt ) : " rm1
      sudo rm $rm1
echo " Dosya silindi "
sleep 2
bash /bin/Terminal-Asistan/menuler/di.sh 
fi
elif [[ $islem == 4 || $islem == 04 ]]; then
read -p "Dosyanın veya klasörün bulunduğu dizini girin ( örnek : /home/kali ) : " yol
cd $yol
read -p "İsim Değişecek Dosya veya Klasör Adı ? : " on
read -p "Dosyanın yeni adı ne olsun ? : " nn
sudo mv $on $nn
echo "Dosya adı değiştirildi"
bash /bin/Terminal-Asistan/menuler/di.sh
elif [[ $islem == 5 || $islem == 05 ]]; then
read -p "Yetkilendirilecek Dosya Hangi Dizinde ? ( örn : /home/Desktop ) : " ym
cd $ym
read -p "Yetkilendirilecek Dosya ismi ve uzantısı (örn : yetkilendir.txt ):  " yma
chmod +x $yma
echo "YETKİ VERİLDİ ! "
sleep 3 
bash /bin/Terminal-Asistan/menuler/di.sh

elif [[ $islem == 6 || $islem == 06 ]]; then
read -p "Yetkisi Kaldırılacak Dosya Hangi Dizinde ? ( örn : /home/Desktop ) : " ym2
cd $ym2
read -p "Yetkisi Kaldırılacak Dosya ismi ve uzantısı (örn : yetkikaldır.txt ):  " yma2
chmod -x $yma2
echo "YETKİ KALDIRILDI ! "
sleep 3 
bash /bin/Terminal-Asistan/menuler/di.sh

elif [[ $islem == 0 || $islem == 00 ]]; then
sudo bash Asistan
else
echo -e '\033[36;40;1m Girdiğniz İşlem Numarasını Kontrol Ediniz....'	
	sleep 1
	clear 
	sudo bash /bin/Terminal-Asistan/menuler/di.sh
fi
#coded by MAJESTAR