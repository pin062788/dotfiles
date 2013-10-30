rm -rf ~/.bashrc.bak
rm -rf ~/.bash_aliases.bak
rm -rf ~/.bash_profile.bak
rm -rf ~/.vim.bak
rm -rf ~/.vimrc.bak
 
mv ~/.bashrc ~/.bashrc.bak
mv ~/.bash_aliases ~/.bash_aliases.bak
mv ~/.bash_profile ~/.bash_profile.bak
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak

ln -s ./dotfiles/bash/bashrc ~/.bashrc
ln -s ./dotfiles/bash/bash_aliases ~/.bash_aliases
ln -s ./dotfiles/bash/bash_profile ~/.bash_profile
ln -s ./dotfiles/vim/ ~/.vim
ln -s ./dotfiles/vim/vimrc ~/.vimrc
