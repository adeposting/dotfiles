#!/bin/zsh

[[ -f ~/.profile ]] && source ~/.profile

[[ -f /etc/zprofile ]] && source /etc/zprofile

[[ -f ~/.zprofile.d/zshenvrc.zsh ]] && source ~/.zprofile.d/zshenvrc.zsh
[[ -f ~/.zprofile.d/setoptrc.zsh ]] && source ~/.zprofile.d/setoptrc.zsh
[[ -f ~/.zprofile.d/ohmyzshrc.zsh ]] && source ~/.zprofile.d/ohmyzshrc.zsh

[[ -f ~/.zprofile.local ]] && source ~/.zprofile.local
