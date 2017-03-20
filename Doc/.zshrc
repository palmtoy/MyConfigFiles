# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

CONF_DIR=~/MyConfigFiles
MY_CONF_DIR=$CONF_DIR

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
ZSH_THEME="palmtoy"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github osx node npm nvm brew colored-man colorize command-not-found copydir copyfile cp dircycle)

DISABLE_AUTO_UPDATE="true" # for oh-my-zsh config
source $ZSH/oh-my-zsh.sh
unsetopt share_history # setopt no_share_history

export ZOOKEEPER_BIN=~/Repository/Software/Programming/zookeeper-3.4.5/bin
# export MONGODB_BIN=~/Repository/Software/Programming/MongoDB/mongodb-osx-x86_64-2.6.1/bin
export MONGODB_BIN=/opt/mongo/current/bin

export CASSIE_SERVER=~/Workspace/OSChina/CassieServer
export GAME_MAJOR=$HOME/Workspace/LabOfGit/game-major

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home

# Customize to your needs...
export PATH=~/Library/Bin:/usr/local/bin:/usr/local/mysql/bin:/opt/redis/current/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$ZOOKEEPER_BIN:$MONGODB_BIN:$PATH
export PATH=$HOME/Downloads/Software/Java/apache-maven-3.3.9/bin:$PATH
export CLASSPATH=.:./target/classes:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$HOME/.m2/repository/io/netty/netty-all/4.1.9.Final/netty-all-4.1.9.Final.jar

. $CONF_DIR/.bash_alias

# red: 31, green: 32, yellow: 33, blue: 34, purple: 35, cyan: 36
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;31;40'

fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

setopt HIST_IGNORE_ALL_DUPS

eval "$(grunt --completion=zsh)"

source $HOME/.nvm/nvm.sh # This loads NVM

# npm
. <(npm completion)

