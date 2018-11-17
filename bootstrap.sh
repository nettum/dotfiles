# zsh
sudo apt install zsh
sudo apt install fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install basic software
sudo snap install spotify
sudo snap install slack
sudo apt install filezilla
sudo apt install gimp
sudo apt install virtualbox
sudo apt install flameshot
sudo apt install dconf-editor
sudo apt install terminator
sudo apt install pwgen

# thefuck 
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# setup gnome tweak tools adapta wm and icons
sudo apt install gnome-tweak-tool
sudo apt install chrome-gnome-shell
sudo add-apt-repository ppa:tista/adapta
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt install adapta-gtk-theme paper-icon-theme

# nginx, php, mysql
sudo apt install mysql-server
mysql_secure_installation
sudoo apt install mysql-workbench
sudo apt install nginx
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php-fpm php-xml php-curl php-mbstring php-zip php-mysql php-imagick
sudo service php7.2-fpm restart
# if you also need php7.1 (or older supported versions), uncomment the line below:
# sudo apt install php7.1-fpm php7.1-mcrypt php7.1-xml php7.1-curl php7.1-mbstring php7.1-zip php7.1-mysql php7.1-imagick

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
code --install-extension felixfbecker.php-intellisense | mrmlnc.vscode-duplicate | EditorConfig.EditorConfig | whatwedo.twig | eamodio.gitlens