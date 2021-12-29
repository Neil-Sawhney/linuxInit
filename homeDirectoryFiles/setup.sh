#!/bin/sh
ssh-keygen -t ed25519 -C "neil@neil-sawhney.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


git submodule update --init --recursive
cp -r vimFiles/.vim vimFiles/.vimrc ~/

git config --global user.email "Neil@neil-sawhney.com"
git config --global user.name "Neil Sawhney"


