#!/bin/sh

# --- Navigation ---
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# --- Overrides ---
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias top='htop'
alias ping='ping -c 3'
alias wget='wget -c'
alias tree='tree -C'

# --- Unix Shortcuts ---
alias ls='ls -GFh'
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -lhA'

# --- Terminal Shortcuts ---
alias c='clear'
alias du1='du -h -d 1'

# --- Editor Shortcuts ---
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# --- Application Shortcuts ---
alias vscode='open -a "Visual Studio Code"'

# --- Filesystem Shortcuts ---
alias icloud-drive="cd '$ICLOUD_DRIVE'"
alias obsidian-vault="cd '$OBSIDIAN_VAULT'"