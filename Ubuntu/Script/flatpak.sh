echo 'это установка flatpak и GNOME, когда система перезагрузится, в окошке входа будет что то вроде шестерёнки. Там выбери GNOME'
echo 'чтобы они нормально работал нужен ребут, скрипт сделает это за тебя'
echo 'когда просят - жми ентер/вводи пароль/жми y и нажимай ентер'
sleep 3
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak ubuntu-gnome-desktop gnome-tweaks
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt --fix-broken install
echo 'через 10 секунд перезагрузка'
sleep 10
sudo reboot

