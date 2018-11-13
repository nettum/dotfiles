# install basic software
sudo snap install spotify
sudo snap install slack
sudo apt install terminator
sudo apt install flameshot
sudo apt install filezilla
sudo apt install pwgen

# zsh
sudo apt install zsh
sudo apt install fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# setup gnome tweak tools adapta wm and icons
sudo apt install gnome-tweak-tool
sudo apt install chrome-gnome-shell
sudo add-apt-repository ppa:tista/adapta
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt install adapta-gtk-theme paper-icon-theme

# nginx, php, mysql
sudo apt install nginx
sudo apt install php-fpm
sudo apt install php-xml php-curl php-mbstring php-zip
sudo apt install mysql-server
mysql_secure_installation

# composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# node, npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm install v8.12.0

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn

# vscode
sudo snap install vscode
ext install felixfbecker.php-intellisense
ext install mrmlnc.vscode-duplicate
ext install EditorConfig.EditorConfig