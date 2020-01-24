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
plugins=(git github osx node npm nvm brew colorize command-not-found copydir copyfile cp dircycle)

DISABLE_AUTO_UPDATE="true" # for oh-my-zsh config
source $ZSH/oh-my-zsh.sh
unsetopt share_history # setopt no_share_history

# HOMEBREW_NO_AUTO_UPDATE="true" # for homebrew
export HOMEBREW_NO_AUTO_UPDATE=1

export ZOOKEEPER_BIN=~/Repository/Software/Programming/zookeeper-3.4.5/bin
# export MONGODB_BIN=~/Repository/Software/Programming/MongoDB/mongodb-osx-x86_64-2.6.1/bin
export MONGODB_BIN=/opt/mongo/current/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.1.jdk/Contents/Home
export M2_REPO=$HOME/.m2/repository

# Customize to your needs...
export PATH=~/Library/Bin:/usr/local/bin:/usr/local/mysql/bin:/opt/redis/current/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$ZOOKEEPER_BIN:$MONGODB_BIN:$PATH
export PATH=$HOME/Repository/Software/Java/apache-maven-3.3.9/bin:$PATH
export PATH=/usr/local/Cellar/qt5/5.8.0_1/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/MacVim.app/Contents/bin:$PATH
export PATH=~/Workspace/GitHub/Blockchain/fabric-samples/bin:$PATH
export PATH=$HOME/Repository/Software/Programming/MQTT/emqttd/bin:$PATH
export PATH=$HOME/Repository/Software/Programming/Java/jad158g.mac.intel:$PATH

export CLASSPATH=.:./target/classes:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$M2_REPO/org/mongodb/mongo-java-driver/3.4.2/mongo-java-driver-3.4.2.jar:$M2_REPO/io/netty/netty-all/4.1.9.Final/netty-all-4.1.9.Final.jar:$M2_REPO/redis/clients/jedis/2.8.2/jedis-2.8.2.jar

. $CONF_DIR/.bash_alias

# red: 31, green: 32, yellow: 33, blue: 34, purple: 35, cyan: 36
export GREP_COLOR='1;31;40'

fpath=($HOME/.oh-my-zsh/custom/plugins/zsh-completions $fpath)
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters

setopt HIST_IGNORE_ALL_DUPS

# eval "$(grunt --completion=zsh)"

source $HOME/.nvm/nvm.sh # This loads NVM

# npm
. <(npm completion)

