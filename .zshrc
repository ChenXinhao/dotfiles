# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="bureau"
#ZSH_THEME="amuse"
#ZSH_THEME="avit"
#ZSH_THEME="bira"
#ZSH_THEME="sporty_256"
#ZSH_THEME="kardan"
#ZSH_THEME="powerline"
#ZSH_THEME="agnoster"
#ZSH_THEME="afowler"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="frisk"
#ZSH_THEME="mortalscumbag"
ZSH_THEME="ys"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git-extras git-flow-avh history-substring-search dirhistory ssh-agent tmux npm yarn python pip docker command-not-found zsh-autosuggestions)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa

# git comand
alias gf='git flow'
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gck='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

unsetopt PROMPT_SP


# alias sudo="sudo -E"
# alias lh='ls -a | egrep "^\."'
# alias vi='vim'
# alias cp='cp -r'
# alias rm='rm -r'
# alias mkdir='mkdir -p'
# alias tmux='tmux -2'
# alias npm='cnpm'
# alias sa="sudo apt-get"
# alias python="python3"
# alias pip="pip3"
# alias fq='~/xx-net.sh'

# alias -s html=vi
# alias -s rb=vi
# alias -s py=vi
# alias -s js=vi
# alias -s c=vi
# alias -s java=vi
# alias -s txt=vi
# alias -s gz='tar -xzvf'
# alias -s tgz='tar -xzvf'
# alias -s zip='unzip'
# alias -s bz2='tar -xjvf'



# User configuration

# export HOME=~
# export FONTS_HOME="/usr/share/fonts"
# export PYTHON_HOME="$HOME/.local/lib/python3.6:/usr/lib/python3.6:/usr/lib64/python3.6:/usr/include/python3.6"
# export GCC_HOME="/usr/lib/gcc/x86_64-redhat-linux/4.9.2"
# export LLVM_HOME="/usr/lib/llvm-5.0"
# export NPM_CONFIG_PREFIX="$HOME/.npm-global"
# export JAVA_HOME="/usr/lib/jvm/default-java"
# export CUDA_HOME="/usr/local/cuda-10.1"
# export CUDA_BIN_PATH=$CUDA_HOME
# export MINICONDA_HOME=~/miniconda3
# export ANACONDA_HOME="/opt/anaconda/anaconda3"
# export GOPATH="$HOME/golang"
# export GOROOT="/usr/local/opt/go/libexec"
# export AIRFLOW_HOME=~/airflow
# export MEGDL_HOME=~/megdl

# export LC_ALL="en_US.UTF-8"
# export LANG="en_US.UTF-8"

# export PATH="/bin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/.local/bin:/usr/bin:/usr/sbin"
# export PATH="$FONTS_HOME:$PATH"
# export PATH="$PYTHON_HOME:$PATH"
# export PATH="$GCC_HOME/include:$PATH"
# export PATH="$LLVM_HOME/bin:$PATH"
# export PATH="$NPM_CONFIG_PREFIX/bin:$PATH"
# export PATH="$JAVA_HOME/bin:$PATH"
# export PATH="$CUDA_HOME/bin:$PATH"
# export PATH="$CUDA_HOME/include:$PATH"
# export PATH="$MINICONDA_HOME/bin:$PATH"
# export PATH="$ANACONDA_HOME/bin:$PATH"
# export PATH="$GOPATH/bin:$PATH"
# export PATH="$GOROOT/bin:$PATH"
# export PATH="$MEGDL_HOME/bin:$PATH"

# export LD_LIBRARY_PATH="/usr/lib:/usr/local/lib:$HOME/.local/lib"
# export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"

# export TERM="xterm-256color"
# export CC='/usr/bin/clang'
# export CXX='/usr/bin/clang++'
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS="@im=fcitx"
# export GIT_SSL_NO_VERIFY=1
# export EDITOR='vim'
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# umask 002
