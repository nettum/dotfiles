#!/bin/bash

# install basic software
sudo apt install -y vim
sudo apt install -y curl
sudo apt install -y jq
sudo apt install -y lynx
sudo apt install -y filezilla
sudo apt install -y gimp
sudo apt install -y handbrake
sudo apt install -y virtualbox
sudo apt install -y virtualbox-ext-pack
sudo apt install -y flameshot
sudo apt install -y kazam
sudo apt install -y gnome-sushi
sudo apt install -y dconf-editor
sudo apt install -y terminator
sudo apt install -y tmux
sudo apt install -y pwgen
sudo apt install -y tldr
sudo apt install -y tree
sudo apt install -y openvpn
sudo apt install -y nmap
sudo apt install -y whois
sudo apt install -y git
sudo apt install -y steam

git config --global user.name "Marius Nettum"
git config --global user.email "nettum@gmail.com"

sudo snap install spotify
sudo snap install postman

wget -O browserX-x86_64.AppImage https://dl.getstation.com/download/linux_64\?filetype\=AppImage
chmod +x browserX-x86_64.AppImage
./browserX-x86_64.AppImage
rm -rf browserX-x86_64.AppImage

wget https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
chmod +x diff-so-fancy
sudo cp diff-so-fancy /usr/local/bin

sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# zsh
sudo apt install -y zsh
sudo apt install -y fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt install -y autojump 
echo "\n. /usr/share/autojump/autojump.sh" >> ~/.bashrc
echo "\n. /usr/share/autojump/autojump.sh" >> ~/.zshrc

# set vim as default editor
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"" >> ~/.bashrc
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"" >> ~/.zshrc

# setup personal bash-scripts
git clone git@github.com:nettum/check-response.git
sudo cp check-response/check_response.sh /usr/local/bin/check_response && chmod +x /usr/local/bin/check_response
git clone git@github.com:nettum/git-compare-branch.git
sudo cp git-compare-branch/git-cmp-branch.sh /usr/local/bin/git-cmp-branch && chmod +x /usr/local/bin/git-cmp-branch
rm -rf check-response git-cmp-branch

# thefuck 
sudo apt install -y python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
echo "eval \$(thefuck --alias)" >> ~/.bashrc
echo "eval \$(thefuck --alias)" >> ~/.zshrc

# setup gnome tweak tools, plata theme and icons
sudo apt install -y gnome-tweak-tool
sudo apt install -y chrome-gnome-shell
sudo add-apt-repository ppa:tista/plata-theme
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt install -y plata-theme paper-icon-theme

# charles
wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -
sudo sh -c 'echo deb https://www.charlesproxy.com/packages/apt/ charles-proxy main > /etc/apt/sources.list.d/charles.list'
sudo apt update
sudo apt install -y charles-proxy

# nginx, php, mysql, redis
sudo apt install -y mysql-server
mysql_secure_installation
sudo apt install -y mysql-workbench
sudo apt install -y nginx
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install -y php-fpm php-xml php-curl php-mbstring php-zip php-mysql php-sqlite3 php-redis php-imagick php-gd
sudo service php7.2-fpm restart
sudo apt install -y redis-server
# if you also need php7.1 (or older supported versions), uncomment the line below:
# sudo apt install php7.1-fpm php7.1-mcrypt php7.1-xml php7.1-curl php7.1-mbstring php7.1-zip php7.1-mysql php7.1-imagick

# phpunit
wget -O phpunit https://phar.phpunit.de/phpunit-7.phar
chmod +x phpunit
sudo mv phpunit /usr/local/bin/


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
sudo apt install -y yarn

# vscode
sudo snap install vscode --classic
code --install-extension felixfbecker.php-intellisense 
code --install-extension mrmlnc.vscode-duplicate
code --install-extension EditorConfig.EditorConfig
code --install-extension whatwedo.twig
code --install-extension eamodio.gitlens

# heroku, aws
sudo snap install --classic heroku
sudo apt install -y awscli

# custom aliases
echo "\nalias df='df -x \"squashfs\"'" >> ~/.bashrc
echo "\nalias df='df -x \"squashfs\"'" >> ~/.zshrc