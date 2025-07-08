#!/bin/sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESS='-R'
export HISTSIZE=10000
export SAVEHIST=10000
export DIRSTACKSIZE=10
export ICLOUD_DRIVE='/Users/iamlynnmckay/Library/Mobile Documents/com~apple~CloudDocs'
export OBSIDIAN_VAULT='/Users/iamlynnmckay/Library/Mobile Documents/iCloud~md~obsidian/Documents'

for d in ~/env ~/.env ~/.env.d ~/.local/env ~/.local/.env; do
    if [[ -f "$d" ]]; then
        source "$d"
    elif [[ -d "$d" ]]; then
        for f in "$d"/*; do
            [[ -f "$f" ]] && source "$f"
        done
    fi
done

if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
