# === Powerlevel10k ===

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# === Oh My Zsh ===

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# == Oh My Zsh plugins ==

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git zsh-syntax-highlighting zsh-autosuggestions zsh-vi-mode )
ZVM_VI_EDITOR="NVIM_APPNAME nvim2"

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.local/bin:$PATH"

#
alias n="nvim"
alias nvconf="cd ~/.config/nvim && nvim && cd -"

# === Git aliases ===
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias glog="git log --graph --decorate --oneline --all"
alias glogd="git log --graph --decorate --all"
alias gpull="git pull"
alias gpush="git push"
alias gcl="git clone"
alias gsw="git switch"
alias gswf="git branch | fzf | xargs git switch"
alias gbr="git branch"
alias gbrc="git checkout -b"
alias gch="git checkout"
alias gpset="git push --set-upstream origin"
alias ГООЛ="
echo ГОООООООООООООООООООООООООООООООЛ
git"

# === Eza ===
alias ls="eza --icons=always"
alias lsa="eza --icons=always -a"
alias lst="eza --icons=always --tree"
alias lstl="eza --icons=always --tree --level"

# === Zoxide ===
eval "$(zoxide init zsh)"
alias cd="z"

# === Dotnet ===
export DOTNET_ROOT=/usr/local/share/dotnet
export PATH=$PATH:$DOTNET_ROOT
alias db="dotnet build"
alias dr="dotnet run"

# === Docker ===
alias docup="docker-compose up"
alias docupb="docker-compose up --build"
alias docupn="docker-compose up --no-start"
alias docupbn="docker-compose up --build --no-start"
alias docdown="docker-compose down"
alias docst="docker start"
alias docsp="docker stop"

# === Edit this config ===
alias nzsh="nvim ~/.zshrc"
alias rzsh="source ~/.zshrc"

# === Exports ===
export PATH=$PATH:$HOME/Downloads/nvim-linux-x86_64/nvim-linux-x86_64/bin/
export PATH=$PATH:$HOME/Downloads/zen.linux-x86_64/zen/
export PATH=$PATH:$HOME/dotfiles/Utilites/ASM/
export PATH=$PATH:$HOME/dotfiles/Utilites/C++/
export PATH=$PATH:$HOME/dotfiles/Utilites/Rust/
export PATH=$PATH:$HOME/go/bin/
export PATH=$PATH:~/Projects/masm-linux/bin

# Hyprland

HYPRSHOT_DIR="$HOME/Pictures/hyprshot/"
