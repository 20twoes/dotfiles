#!/bin/bash

# Taken from https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function main() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        -avh --no-perms . ~;
    source ~/.bash_profile;
}

main;
unset main;

