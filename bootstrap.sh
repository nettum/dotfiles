# install basic software
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

# nginx, php, mysql
apt install nginx
apt install php-fpm
apt install php-xml php-curl php-mbstring php-zip
apt install mysql-server
mysql_secure_installation

# composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

# node, npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install v8.12.0