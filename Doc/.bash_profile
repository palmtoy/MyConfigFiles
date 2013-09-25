export PS1="\u@mac:\w $ "
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH=~/Library/Bin:/usr/local/mysql/bin:/usr/local/redis-2.6.14/src:$PATH

# export PREFIX=~/.nvm/v0.10.13
# export NODE_PATH=$PREFIX/lib/node_modules

# aliases
alias sshp3="ssh zgli@pomelo3.server.163.org -p 1046"
alias pc="pomelo-cli -h pomelo3.server.163.org"
alias db="mysql -uxy -pdev Pomelo"
alias dbr="mysql -hpomelo3.server.163.org -uxy -pdev Pomelo"
alias cdg="cd ~/Workspace/GitHub/lordofpomelo/game-server"
alias cdw="cd ~/Workspace/GitHub/lordofpomelo/web-server"
alias cdp="cd ~/Workspace/GitHub/pomelo"
alias cdh="cd ~/Workspace/GitHub/hello4lord"
alias cdns="cd ~/Workspace/LabOfGit/nsshutil"
alias cddl="cd ~/Downloads/Lord"

alias cd..="cd .."
alias cd...="cd ../.."
alias cd-="cd -"
alias ll="ls -la"
alias lm='ll | more'
alias df='df -h'
alias du='du -h -d1'
alias cp='cp -iR'

alias cpd='cp -R'
alias mv='mv -i'
alias rm='rm -i'
alias md='mkdir -p'
alias rd='rm -rf'
alias ztar='tar -czvf'
alias uztar='tar -xzvf'
alias ttar='tar -tvf'
alias man='man -a'
alias vi='vim'
alias mvi='mvim'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias pgr='ps aux | grep'
alias gc='git checkout '
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gcmt='git commit -am'
alias gb='git branch'


[[ -s /Users/will/.nvm/nvm.sh ]] && . /Users/will/.nvm/nvm.sh # This loads NVM

