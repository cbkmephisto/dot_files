# cervine

#export PS1="\u@\h:\w $ "
#export PS1='\[\e[1;31m\]\u\[\e[1;35m\]@\h:\[\e[1;33m\]\w\n\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[m\]$ '
export PS1='\[\e[1;35m\]\w\n\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u\[\e[1;31m\]@\h \[\e[m\]$ '

export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
#alias ls='ls -w' # force to show Chinese characters
alias less='less --RAW-CONTROL-CHARS'

alias ls='ls --color'
alias ll='ls -l'

#export CLICOLOR=1
#export LSCOLORS=GxfxFxDxcxegedabagaced
export LSCOLORS=DxgxFxDxcxegedabagaced

alias top='top -u -stats command,pid,cpu,rprvt,rsize,time,user,th,state'
alias ta='tmux attach'
alias ipynb='ipython3 notebook'

alias awk1="awk '{print \$1}'"

alias today="date +%Y-%m-%d"
alias py3='python3'

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH=$PATH:~/bin

