ln_it_to_home()
{
    target_name="$1"
    

    if [ -z "$1" ]; then
        return 1
    fi  


    rm -rf "$HOME/.${target_name}.bak"

    cp -rf "$HOME/.${target_name}" "$HOME/.${target_name}.bak"

    ln -sf -n -v `pwd -P`/"$target_name" $HOME/."$target_name"

    return $?
}



ln_it_to_home "bash/bashrc"
ln_it_to_home "bash/bashrc_profile"
ln_it_to_home "bash/bash_alias"

ln_it_to_home "vim"
ln_it_to_home "vim/vimrc"

ln_it_to_home "gitconfig"
ln_it_to_home "gitignore"
ln_it_to_home "git-completion.bash"
ln_it_to_home "githelpers"

