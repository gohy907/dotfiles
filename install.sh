#!/usr/bin/sh

# Zsh
sudo apt-get install zsh
sudo chsh -s /bin/zsh $USER
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/.zshrc ~

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
git clone https://github.com/jeffreytse/zsh-vi-mode "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-vi-mode"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
cp zsh/p10k.zsh ~/.oh-my-zsh/custom/themes/powerlevel10k/internal

# Kitty
sudo apt-get install kitty
cp -r kitty ~/.config
gsettings set org.gnome.desktop.default-applications.terminal exec kitty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg -e

# Font for kitty
sudo mkdir /usr/share/fonts/myfonts 
sudo cp ./fonts/JetBrainsMonoNerdFont-Regular.ttf /user/share/fonts/myfonts/
sudo fc-cache -f -v

# Neovim
curl -L -o ~/Downloads/nvim-linux-x86_64.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
mkdir ~/Downloads/nvim-linux-x86_64 && tar -xzvf ~/Downloads/nvim-linux-x86_64.tar.gz -C ~/Downloads/nvim-linux-x86_64
rm ~/Downloads/nvim-linux-x86_64.tar.gz
cp -r nvim ~/.config

# Zen 
curl -L -o ~/Downloads/zen.linux-x86_64.tar.xz https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-x86_64.tar.xz
mkdir ~/Downloads/zen.linux-x86_64 && tar -xf ~/Downloads/zen.linux-x86_64.tar.xz -C ~/Downloads/zen.linux-x86_64
rm ~/Downloads/zen.linux-x86_64.tar.xz

# Git
git config --global user.name "gohy907"
git config --global user.email "gohy2006@mail.ru"
ssh-keygen -t ed25519 -C "gohy2006@mail.ru"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo
echo "Manually add your SSH key to GitHub"
echo "Your SSH key is:"
cat ~/.ssh/id_ed25519.pub
echo 
echo "Manually install font from fonts folder to terminal"
echo
echo "After that, please, reboot your computer"
