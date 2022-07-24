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

ssh-keygen -t ed25519 -C "Neil@neil-sawhney.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub
sleep 30

git remote set-url origin git@github.com:Neil-Sawhney/linuxInit.git

git submodule update --init --recursive
cp -r vimFiles/.vim vimFiles/.vimrc ~/

git config --global user.email "Neil@neil-sawhney.com"
git config --global user.name "Neil Sawhney"
git config --global core.editor vim

sudo apt install zsh -y
sudo apt install git-core curl fonts-powerline -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo reboot now
