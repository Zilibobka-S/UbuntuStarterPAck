#!/bin/bash
#popa - отладка
#блок текста (echo)
echo "ты же прочитал Readme? Сейчас всё оттуда установится. Звони если скрипт не работает (Скрипт написал Zilibobka) и да, я знаю что тебе не нужен libreoffice"
echo "без инета не работает"
echo 'укажи имя компа, это важно. Регистр учитывается'
read username #запись имени в переменную
echo $username '- звучит хайпово'
echo 'кстати, скрипт неоптимизирован'
echo 'через 3 секунды заработает'
echo '0%'
sleep 3

echo 'пароль'

sudo apt update #обнова пакетов
sudo apt upgrade  
echo '10% #'
sleep 1
sudo apt install snapd libreoffice vim alacarte  #установка офиса, снапд, вима и 7зипа с плагинами
echo '25% ###'
sleep 1
flatpak install flathub portproton -y #установка портротона через флатпак
echo '30% ###'
sleep 1
cd /media/$username/Ventoy/fedor/PostInstallation/ #переход в место где лежит вскод
sudo dpkg -i ./Packages/vscode.deb #установка вскода
echo '50% #####'
sleep 1
# я не очень понимаю как это работает, но это установка ватерфокса вроде бы из репозитория. Этот код я скопировал с интернета, чтобы не компилировать ватерфокс
sudo apt install software-properties-common apt-transport-https curl -y
curl -fsSL https://download.opensuse.org/repositories/home:hawkeye116477:waterfox/xUbuntu_22.04/Release.key | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_hawkeye116477_waterfox.gpg > /dev/null
echo 'deb http://download.opensuse.org/repositories/home:/hawkeye116477:/waterfox/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:hawkeye116477:waterfox.list
echo '70% #######'
sleep 1
sudo snap install discord # установка дискорда через снапд
sudo apt update
sudo apt upgrade #обновление пакетов
sudo apt install waterfox-g-kpe -y #установка ватерофкса
sudo apt autoremove #очистка ненужных зависимостей
sudo apt --fix-broken install #я её у себя использовал, чинит сломанные установки (на всякий случай)
echo '90% ########'
sleep 1
#установка пакета хайпа 

echo 'Установить пакет хайпа? (минадстри+майнкрафт)  y/n'
read optional
sleep 1

if [[ "$optional" == 'y' ]]; then 
	echo 'хайпа пока что нет'
	sleep 3
	cd /media/$username/Ventoy/fedor/PostInstallation/ #переход в место где лежит майн
	sudo dpkg -i ./Packages/minecraft.deb
	cd
	flatpak install mindustry -y
	flatpak install com.shatteredpixel.shatteredpixeldungeon -y
	echo 'хайп есть'
	
fi
echo "установить стим? (y/n)"
read optional
	if [[ "$optional" == 'y' ]]; then
        echo 'установка стим 0%'
        sleep 1
        sudo apt install steam
	echo 'установка стим 100% ##########'
fi
echo '100% ##########'
echo 'Дальше сам'
sleep 5

	
