#!/usr/bin/env bash

# needed in the runtime:
# reset default ACL on /tmp so that nix can use proper umask for nix build process
sudo setfacl -k /tmp

if [[ -z "$1" ]]; then
    echo "Target directory: $1"
    cd $1
fi

if [[ -f .envrc ]]; then
    echo "Activating direnv"
    . ~/.nix-profile/etc/profile.d/nix.sh
    direnv allow ./.envrc
    direnv exec . "${@:2}"
fi

exec "${@:2}"