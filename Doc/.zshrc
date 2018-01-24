# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

CONF_DIR=~/MyConfigFiles
MY_CONF_DIR=$CONF_DIR


# export LC_ALL=zh_CN.UTF-8
# export LANG=zh_CN.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LESSCHARSET=UTF-8
# export LESSCHARSET=latin1


ZSH_THEME="palmtoy"

DISABLE_CORRECTION="true"

plugins=(git github nvm colored-man colorize command-not-found copydir copyfile cp dircycle)

DISABLE_AUTO_UPDATE="true" # for oh-my-zsh config
source $ZSH/oh-my-zsh.sh
unsetopt share_history # setopt no_share_history
HOMEBREW_NO_AUTO_UPDATE="true" # for homebrew


export NODEJS_BIN=/cygdrive/c/Program\ Files/nodejs:/cygdrive/c/Users/lizg/AppData/Roaming/npm
export ZOOKEEPER_BIN=~/Repository/Software/Programming/zookeeper-3.4.5/bin
export MONGODB_BIN=/opt/mongo/current/bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home
export M2_REPO=$HOME/.m2/repository

# Customize to your needs...
export PATH=~/Library/Bin:/usr/local/bin:/usr/local/mysql/bin:/opt/redis/current/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$ZOOKEEPER_BIN:$MONGODB_BIN:$PATH
export PATH=$HOME/Repository/Software/Java/apache-maven-3.3.9/bin:$NODEJS_BIN:$PATH
export PATH=/usr/local/Cellar/qt5/5.8.0_1/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/Applications/MacVim.app/Contents/bin:$PATH
export PATH=/c/MyDisc/Repository/Software/Programming/Protobuf/protoc-2.5.0-win32:$PATH
export CLASSPATH=.:./target/classes:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$M2_REPO/org/mongodb/mongo-java-driver/3.4.2/mongo-java-driver-3.4.2.jar:$M2_REPO/io/netty/netty-all/4.1.9.Final/netty-all-4.1.9.Final.jar:$M2_REPO/redis/clients/jedis/2.8.2/jedis-2.8.2.jar

. $CONF_DIR/.bash_alias

fpath=(~/.oh-my-zsh/custom/plugins/zsh-completions/src $fpath)
source ~/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt HIST_IGNORE_ALL_DUPS

source $HOME/.nvm/nvm.sh # This loads NVM

rm -rf ~/.zcompdump*  > /dev/null; compinit;
cdg

