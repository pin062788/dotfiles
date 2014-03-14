ln_it_to_home()
{
    source_file="$1"
    target_file="$2"

    rm -rf "$HOME/${target_file}.bak"

    if [ -e "$HOME/${target_file}" ]; then
        cp -rf "$HOME/${target_file}" "$HOME/${target_file}.bak"
        rm -rf "$HOME/${target_file}"
    fi  

    ln -sf -n -v `pwd -P`/"$source_file" $HOME/"$target_file"

    #return $?
}

set -x

ln_it_to_home "bash/bashrc" ".bashrc"
ln_it_to_home "bash/bash_profile" ".bash_profile"
ln_it_to_home "bash/bash_aliases" ".bash_aliases"
ln_it_to_home "bash/zshrc" ".zshrc"

ln_it_to_home "vim" ".vim"
ln_it_to_home "vim/vimrc" ".vimrc"

ln_it_to_home "git/gitconfig" ".gitconfig"
ln_it_to_home "git/gitignore" ".gitignore"
ln_it_to_home "git/git-completion.bash" "git-completion.bash"
ln_it_to_home "git/githelpers" ".githelpers"
