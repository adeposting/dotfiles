#!/bin/bash

[[ -f /etc/profile ]] && source /etc/profile

[[ -f ~/.profile.d/pathrc.sh ]] && source ~/.profile.d/pathrc.sh
[[ -f ~/.profile.d/envrc.sh ]] && source ~/.profile.d/envrc.sh
[[ -f ~/.profile.d/aliasrc.sh ]] && source ~/.profile.d/aliasrc.sh

[[ -f ~/.profile.local ]] && source ~/.profile.local