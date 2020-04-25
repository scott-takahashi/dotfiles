# .zshrc
# autoload -U promptinit; promptinit
# prompt pure

# Path to your oh-my-zsh installation.
export ZSH=/Users/scott/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="taka"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    github
    brew
    colored-man-pages
    colorize
    copydir
)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# coreutils

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Anaconda
# export PATH="/Users/scott/anaconda2/bin:$PATH"
export PATH="/Users/scott/Library/Python/3.7/bin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Yarn
# export PATH="$HOME/.yarn/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Example aliases
alias zshrc="code ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls="exa --long --header"

# Lists branches by latest commit date
function lb() {
  git branch --sort=-committerdate
}

# Checkout a branch
function gch() {
  git checkout $1
}

function gp() {
  git push
}

function gr() {
  if [ "$1" != "" ]
  then
      git reset HEAD~$1
  else
      git reset HEAD~1
  fi
}

function gcmp() {
  git checkout master && git pull
}

function gnb() {
  if [ "$1" != "" ]
  then
      git checkout -b $1
  else
      echo "ERROR: Please include a branch name"
  fi
}

function ga() {
  git commit --amend
}

function ganv() {
  git commit --amend --no-verify
}

function gc() {
  if [ "$1" != "" ]
  then
      git commit -m $1
  else
      echo "ERROR: Please include a commit message :)"
  fi
}

function gcnv() {
  if [ "$1" != "" ]
  then
      git commit --no-verify -m $1
  else
      echo "ERROR: Please include a commit message :)"
  fi
}

# Stage all files and commit
function gac() {
  if [ "$1" != "" ]
  then
      git add -A . && git commit -m $1
  else
      echo "ERROR: Please iclude a commit message :)"
  fi
}

# Stage all files and ammend previous commit
function gam() {
    git add -A . && git commit --amend
}

# Publish local branch to remote branch with same name
function gpub() {
    if [[ "$(git rev-parse --abbrev-ref HEAD)" == "master" ]]
    then
        echo "You cannot publish from master"
        exit 1
    fi

    git push -u origin $(git rev-parse --abbrev-ref HEAD)
}

function gpubnv() {
    if [[ "$(git rev-parse --abbrev-ref HEAD)" == "master" ]]
    then
        echo "You cannot publish from master"
        exit 1
    fi

    git push -u --no-verify origin $(git rev-parse --abbrev-ref HEAD)
}

function pr() {
    if [[ "$(git rev-parse --abbrev-ref HEAD)" == "master" ]]
    then
        echo "You cannot publish from master"
        exit 1
    fi
    if [ "$1" == "" ]
    then
        echo "Please provide a PR title"
        exit 1
    fi

    git push -u origin $(git rev-parse --abbrev-ref HEAD)
    hub pull-request -m $1 -o
}

function gpnv() {
  git push --no-verify
}

function gfp() {
    git push --force-with-lease origin
}

function gfpnv() {
    git push --force-with-lease --no-verify origin
}

# Rebase off of origin master
function grb() {
    git fetch && git rebase origin/master
}

function grbc() {
    git rebase --continue
}

function grba() {
    git rebase --abort
}

# Docker
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH="/Users/scott/.boot2docker/certs/boot2docker-vm"
# export DOCKER_TLS_VERIFY=1


# NVM use of .nvmrc
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# [[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Autojump

[[ -s /Users/scott/.autojump/etc/profile.d/autojump.sh ]] && source /Users/scott/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
