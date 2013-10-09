MY_DIR=/Users/will/Workspace/GitHub/MyConfigFiles/Doc

. $MY_DIR/git-completion.bash
. $MY_DIR/.git-prompt.sh
. $MY_DIR/.color-ps1.sh
. $MY_DIR/.bash_alias

export CLICOLOR=1
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH=~/Library/Bin:/usr/local/mysql/bin:/usr/local/redis-2.6.14/src:$PATH

# Set Titlebar and Prompt
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export PS1='\[${BLUE}\]\u@mac:\[${CYAN}\]\w\[${GREEN}\]$(__git_ps1 " (%s)")\[${NORMAL}\]\$ '
# export PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]\$ '


[[ -s /Users/will/.nvm/nvm.sh ]] && . /Users/will/.nvm/nvm.sh # This loads NVM

