# install basic software
sudo apt install vim
sudo apt install curl
sudo apt install filezilla
sudo apt install gimp
sudo apt install handbrake
sudo apt install virtualbox
sudo apt install virtualbox-ext-pack
sudo apt install flameshot
sudo apt install gnome-sushi
sudo apt install dconf-editor
sudo apt install terminator
sudo apt install pwgen
sudo apt install tldr
sudo apt install tree
sudo apt install openvpn
sudo apt install nmap
sudo snap install spotify
sudo snap install slack --classic
sudo snap install postman
sudo apt install git
git config --global user.name "Marius Nettum"
git config --global user.email "nettum@gmail.com"

# zsh
sudo apt install zsh
sudo apt install fonts-powerline
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set vim as default editor
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"" >> ~/.bashrc
echo "\nexport VISUAL=vim\nexport EDITOR=\"\$VISUAL\"" >> ~/.zshrc

# setup personal bash-scripts
git clone git@github.com:nettum/check-response.git
sudo cp check-response/check_response.sh /usr/local/bin/check_response && chmod +x /usr/local/bin/check_response
git clone git@github.com:nettum/git-compare-branch.git
sudo cp git-compare-branch/git-cmp-branch.sh /usr/local/bin/git-cmp-branch && chmod +x /usr/local/bin/git-cmp-branch

# thefuck 
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
echo "eval \$(thefuck --alias)" >> ~/.bashrc
echo "eval \$(thefuck --alias)" >> ~/.zshrc

# setup gnome tweak tools adapta wm and icons
sudo apt install gnome-tweak-tool
sudo apt install chrome-gnome-shell
sudo add-apt-repository ppa:tista/adapta
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt install adapta-gtk-theme paper-icon-theme

# nginx, php, mysql, redis
sudo apt install mysql-server
mysql_secure_installation
sudo apt install mysql-workbench
sudo apt install nginx
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php-fpm php-xml php-curl php-mbstring php-zip php-mysql php-sqlite3 php-redis php-imagick php-gd
sudo service php7.2-fpm restart
sudo apt install redis-server
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
sudo apt install yarn

# vscode
sudo snap install vscode --classic
code --install-extension felixfbecker.php-intellisense | mrmlnc.vscode-duplicate | EditorConfig.EditorConfig | whatwedo.twig | eamodio.gitlens

# heroku cli
sudo snap install --classic heroku