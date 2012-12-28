alias yyproxy="ssh -N -f -D 1080 twer@173.255.208.86"
alias pxy="ssh -N -f -D 1080 root@198.74.48.54"

alias dir="ls -R | grep ":" | sed -e 's/://' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -AFG'
alias l='ls -hlFG'

alias rm='rm -i' # DON'T USE rm -rf ALWAYS, BE CAREFUL
alias rdf='rm -rf'

alias gd='cd ~/Downloads'
alias ds='cd /Users/twer/Work/rea/consumer-search'

alias hi=' history | less +G'

alias vimrc='vim ~/.vimrc'

alias grep='grep -a --color=auto'

alias psa='ps aux'

alias k9='kill -9'

alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'
alias be='bundle exec'
alias cuke='be cucumber '
alias cucumber='cuke'
alias brails='be rails'

alias sll='svn log | less'
alias spec='be spec --format documentation --color --profile'

alias g='git'
alias d='git diff'

alias git-manual-page='open http://schacon.github.com/git/git.html'

alias resource='source ~/.bashrc'

alias wtf='tail -f /var/log/{dmesg,messages,*{,/*}{log,err}}'

#alias gradle='gradle -q'
