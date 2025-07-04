#!/usr/bin/sh

# Zsh
sudo apt-get clean zsh
rm -f ~/.zsh*
rm -rf ~/.oh-my-zsh
sudo chsh -s /bin/bash $USER 

# Kitty
sudo apt-get clean kitty
rm -rf ~/.config/kitty 

# Neovim
rm -rf ~/Downloads/nvim-linux-x86_64
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim 
rm -rf ~/.local/share/nvim

# Zen 
rm -rf ~/Downloads/zen.linux-x86_64
rm -rf ~/.zen

echo
echo "Please, reboot your computer"
