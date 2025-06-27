#!/bin/zsh

# --- Ensure Required Packages are Installed ---
[[ -e /opt/homebrew/share/zsh-autosuggestions ]] || {
    brew install zsh-autosuggestions
}

[[ -e /opt/homebrew/share/zsh-syntax-highlighting ]] || {
    brew install zsh-syntax-highlighting
}

[[ -e /opt/homebrew/share/powerlevel10k ]] || {
    brew install romkatv/powerlevel10k/powerlevel10k
}

[[ -e ~/Library/Fonts/MesloLGLNerdFont-Regular.ttf ]] || {
    brew tap homebrew/cask-fonts
    brew install --cask font-meslo-lg-nerd-font
}

# --- Completion Framework ---
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # Case-insensitive
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache
autoload -Uz compinit && compinit

# --- Prompt Initialization ---
autoload -Uz promptinit && promptinit

# --- Powerlevel10k Instant Prompt ---
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# --- Powerlevel10k Theme and Config ---
[[ -e /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]] && \
    source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme && \

[[ -e ~/.p10k.zsh ]] && source ~/.p10k.zsh

# --- Oh My Zsh Initialization ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_PLUGINS=(git zsh-autosuggestions zsh-syntax-highlighting)
source "$ZSH/oh-my-zsh.sh"

# --- Plugin Activation ---
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
