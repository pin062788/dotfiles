#!/bin/bash

mkdir -p ~/.tmp_files/vim/{backups,tmp}

ln_it_to_home()
{
    if [ -z "$1" ]; then
        return 1
    fi

    target_name="$1"

    cp -rf "$HOME/.${target_name}" "$HOME/.${target_name}.backup"

    ln -sf -n -v `pwd -P`/"$target_name" $HOME/."$target_name"

    return $?
}


ln_it_to_home "bashrc"
ln_it_to_home "bashrc_profile"
ln_it_to_home "bash_alias"

ln_it_to_home "vim"
ln_it_to_home "vimrc"
ln_it_to_home "gitconfig"
ln_it_to_home "gitignore"
ln_it_to_home "git-completion.bash"
ln_it_to_home "githelpers"


