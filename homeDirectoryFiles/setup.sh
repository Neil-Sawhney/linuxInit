#!/bin/sh
sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install build-essential
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install curl
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


git submodule update --init --recursive
cp -r vimFiles/.vim vimFiles/.vimrc ~/

git config --global user.email "Neil@neil-sawhney.com"
git config --global user.name "Neil Sawhney"

sudo apt install zsh -y
sudo apt install git-core curl fonts-powerline -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo reboot now
