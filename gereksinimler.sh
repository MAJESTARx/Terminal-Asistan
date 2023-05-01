#!bin/bash
#created by MAJESTAR
echo "Ayarlar Yapılandırılacak Lütfen Şifreyi Girip Bekleyiniz "
sudo cp -r ~/Downloads/Terminal-Asistan /bin
sudo cp -r ~/İndirilenler/Terminal-Asistan /bin
sudo cp ~/Downloads/Terminal-Asistan/Asistan /bin
sudo cp ~/İndirilenler/Terminal-Asistan/Asistan /bin
sudo chmod +x /bin/Asistan
sudo chmod 777 /bin/Terminal-Asistan/*
cd /usr/share
sudo mkdir yt
cd /home
echo "Kopyalama işlemleri bitti diğer ayarlar yapılandırılıyor.. Sabırlı olun "
sleep 2 
sudo apt update && sudo apt upgrade
sudo apt-get install figlet -y
sudo apt-get install cmatrix -y
sudo apt-get install toilet -y
sudo apt-get install cowsay -y
sudo apt-get install lolcat -y
sudo apt-get install python && sudo apt install python3 -y
sudo apt-get install leafpad -y 
sudo apt-get install youtube-dl -y
cd /usr/share
sudo git clone https://github.com/xero/figlet-fonts
sudo mv figlet-fonts/* figlet
echo ""
echo ""
echo""
echo -e '
\e[32mGereken dosyalar yüklendi sadece terminale  parantezsiz bir şekilde ( Sudo Asistan )yazarak  Asistanı çağırabilirsiniz'
#coded by MAJESTAR