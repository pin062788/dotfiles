# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

export TERM="xterm-color"
export PATH=/usr/local/sbin:/usr/local/bin:~/bin:$PATH

export EDITOR=vim
export CLICOLOR=1

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}") ";
}


if which rbenv > /dev/null; then 
  eval "$(rbenv init -)"; 
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

if [ -f "$HOME/.bash_alias" ]; then
  source "$HOME/.bash_alias"
fi

if [ -f "$HOME/.git-completion.bash" ]; then
  source "$HOME/.git-completion.bash"
fi

PS1="\[\033[0m\]\h:\[\033[0m\] \[\033[0m\]\w\[\033[0m\] \[\033[0;31m\]\$(git_branch)\[\033[0m\]$ "

if [ -f "$HOME/.rea_profile" ]; then
  source "$HOME/.rea_profile"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
