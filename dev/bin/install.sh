#!/bin/bash

set -oue pipefail

if [ ! -e ~/.local/share/scripts ]
then
    mkdir -p ~/.local/tmp/adeposting
    git clone https://github.com/adeposting/scripts ~/.local/tmp/adeposting/scripts
    cd ~/.local/tmp/adeposting/scripts
    make install
fi

export PATH="$HOME/.local/bin:$PATH"
rm -rf ./dist
cp -r ./src ./dist
rm -rf $HOME/.local/share/dotfiles
cp -r ./dist $HOME/.local/share/dotfiles
$HOME/.local/bin/linker --force --source "$HOME/.local/share/dotfiles" --destination "$HOME"