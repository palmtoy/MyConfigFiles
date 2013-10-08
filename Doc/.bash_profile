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
export PS1='\[${BLUE}\]\u@mac:\[${YELLOW}\]\w\[${GREEN}\]$(__git_ps1 "(%s)")\[${NORMAL}\]\$ '


[[ -s /Users/will/.nvm/nvm.sh ]] && . /Users/will/.nvm/nvm.sh # This loads NVM

