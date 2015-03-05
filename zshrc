# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fnlocal/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# git clone https://github.com/zsh-users/antigen.git
# https://github.com/zsh-users/antigen
source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme kolo
antigen apply
