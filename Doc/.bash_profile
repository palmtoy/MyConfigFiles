export PS1="\u@mac:\w $ "
export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH=~/Library/Bin:/usr/local/mysql/bin:/usr/local/redis-2.6.14/src:$PATH

# export PREFIX=~/.nvm/v0.10.13
# export NODE_PATH=$PREFIX/lib/node_modules

# aliases
alias sshm="ssh ubuntu@54.253.75.158"
alias sshp1="ssh zgli@pomelo1.server.163.org -p 1046"
alias sshp3="ssh zgli@pomelo3.server.163.org -p 1046"
alias sshp4="ssh zgli@pomelo4.server.163.org -p 1046"
alias sshf8="ssh zgli@fkmm8.photo.163.org -p 1046"
alias sshf9="ssh zgli@fkmm9.photo.163.org -p 1046"
alias sshpt4="ssh pomelo@pushtest4.server.163.org -p 1046"
alias pc="pomelo-cli -h pomelo3.server.163.org"
alias db="mysql -uxy -pdev Pomelo"
alias dbr="mysql -hpomelo3.server.163.org -uxy -pdev Pomelo"
alias cdl="cd ~/Workspace/GitHub/lordofpomelo"
alias cdg="cd ~/Workspace/GitHub/lordofpomelo/game-server"
alias cdw="cd ~/Workspace/GitHub/lordofpomelo/web-server"
alias cdp="cd ~/Workspace/GitHub/pomelo"
alias cda="cd ~/Workspace/LabOfGit/aws"
alias cdh="cd ~/Workspace/GitHub/hello"
alias cdhl="cd ~/Workspace/GitHub/hello4lord"
alias cdns="cd ~/Workspace/LabOfGit/nsshutil"
alias cdns4ps="cd ~/Workspace/LabOfGit/Nssh4PushSvr"
alias cdnd="cd ~/Workspace/GitHub/ndump"
alias cddl="cd ~/Downloads/Lord"

alias cd..="cd .."
alias cd...="cd ../.."
alias cd-="cd -"
alias ll="ls -la"
alias lm='ll | more'
alias df='df -h'
alias du='du -h --max-depth=1'
alias cp='cp -i'

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


[[ -s /Users/will/.nvm/nvm.sh ]] && . /Users/will/.nvm/nvm.sh # This loads NVM

