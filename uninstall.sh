#!/usr/bin/sh

# Zsh
sudo apt-get purge zsh
rm ~/.zshrc
rm -rf ~/.oh-my-zsh

# Kitty
sudo apt-get purge kitty
rm -rf ~/.config/kitty 

# Neovim
rm -rf ~/Downloads/nvim-linux-x86_64
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim 
rm -rf ~/.local/share/nvim

# Zen 
rm -rf ~/Downloads/zen.linux-x86_64
