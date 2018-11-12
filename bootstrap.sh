# install software
snap install spotify
snap install slack
snap install vscode
apt install terminator

# zsh
apt install zsh
apt install fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup gnome tweak tools adapta wm and icons
apt install gnome-tweak-tool
apt-get install chrome-gnome-shell
add-apt-repository ppa:tista/adapta
add-apt-repository ppa:snwh/ppa
apt-get update
apt install adapta-gtk-theme paper-icon-theme

# nginx, php
apt install nginx
apt install php-fpm