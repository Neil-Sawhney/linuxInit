#!/bin/sh
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install curl
sudo apt install gdb -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
sudo apt install libheif-examples -y
sudo apt install imagemagick -y
sudo apt install ffmpeg -y

cp -r vimFiles/.vim vimFiles/.vimrc ~/

git config --global user.email "Neil@neil-sawhney.com"
git config --global user.name "Neil Sawhney"
git config --global core.editor vim

sudo apt install zsh -y
sudo apt install git-core curl fonts-powerline -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "bindkey -v" >> ~/.zshrc
sudo reboot now
