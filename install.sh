#!/bin/bash

echo "Install dotfiles"

for file in $(ls -a | grep -E "^\.\w" | grep -wv ".git");
do
    ln -siv $(readlink -f $file) ~/$file
done
