#!/bin/bash
if [ "$EUID" -ne 0 ]
	 then echo "Bu betik süper kullanıcı ayrıcalıklarına ihtiyaç duyar."
		    exit
fi
echo -e "Kuruluma başlamadan önce .bashrc dosyasındaki paket yöneticisi ve sudo/doas komutlarını düzenlemek isteyebilirsiniz."
read

echo -e "\033[1mPaketler kuruluyor...\033[0m"
pacman -Syu \
	i3 \
	dmenu \
	doas \
	firefox \
	ttf-font-awesome \
	gnu-free-fonts \
	noto-fonts \
	sdl2_ttf \
	ttf-bitstream-vera \
	ttf-caladea \
	ttf-carlito \
	ttf-croscore \
	ttf-dejavu \
 	mftrace \
	opendesktop-fonts \
	perl-font-ttf \
	sdl_ttf \
	ttf-anonymous-pro \
	ttf-arphic-ukai \
	ttf-baekmuk \
	ttf-cascadia-code \
	ttf-cormorant \
	ttf-eurof \
	ttf-fantasque-sans-mono \
	ttf-fira-code \
	ttf-fira-mono \
	ttf-fira-sans \
	ttf-font-awesome \
	ttf-hanazono \
	ttf-hannom \
	ttf-ibm-plex \
	ttf-inconsolata \
	ttf-indic-otf \
	ttf-ionicons \
	ttf-jetbrains-mono \
	ttf-joypixels \
	ttf-junicode \
	ttf-khmer \
	ttf-lato \
	ttf-liberation \
	ttf-linux-libertine \
	ttf-linux-libertine-g \
	ttf-monofur \
	ttf-nerd-fonts-symbols \
	ttf-opensans \
	ttf-proggy-clean \
	ttf-roboto \
	ttf-roboto-mono \
	ttf-sarasa-gothic \
	ttf-sazanami \
	ttf-tibetan-machine \
	arc-gtk-theme \
	lxappearance \
	--noconfirm
echo -e "\033[1mDosyalar kopyalanıyor...\033[0m"
cp i3/ ~/.config/
mkdir ~/.config/alacritty/
cp -v Alacritty/* ~/.config/alacritty
cp -v Prompt/bashrc ~/.bashrc
cp -v Prompt/bashrc-root /root/.bashrc
echo -e "\033[1mKurulum tamamlandı."
