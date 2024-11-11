######################################################
# Path
######################################################

function addToPATH {
  case ":$PATH:" in
    *":$1:"*) :;; # already there
    *) PATH="$1:$PATH";; # or PATH="$PATH:$1"
  esac
}

addToPATH /usr/local/sbin

######################################################
# System aliases and exports
######################################################

alias ll="ls -alh"
alias psx="ps -ef"
alias catp="cat ${HOME}/.zsh_profile"
bindkey -s ^f "tmux-sessionizer\n"

addToPATH ${HOME}/.local/scripts

######################################################
# Git
######################################################

alias git_config_remote="git config remote.origin.fetch '+refs/heads/*:refs/remotes/origin/*'"

######################################################
# Homebrew
######################################################

UNAME_MACHINE="$(/usr/bin/uname -m)"
if [[ "${UNAME_MACHINE}" == "arm64" ]]
then
  # On ARM macOS, this script installs to /opt/homebrew only
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  # On Intel macOS, this script installs to /usr/local only
  eval "$(/user/local/bin/brew shellenv)"
fi

######################################################
# nvm
######################################################

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

######################################################
# Go
######################################################

export GOPATH="$HOME/go"
addToPATH "$GOPATH/bin"

######################################################
# Java
######################################################

export JAVA_HOME="$HOME/.java/home"
addToPATH "$JAVA_HOME/bin"

export MAVEN_HOME="$HOME/.maven/home"
addToPATH "$MAVEN_HOME/bin"

######################################################
# ZSH Theme
######################################################

BULLETTRAIN_STATUS_EXIT_SHOW=true
BULLETTRAIN_TIME_BG=yellow
BULLETTRAIN_TIME_FG=black

BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  status
  git
)

alias zsh_aws="source zsh_add_to_prompt aws"

######################################################
# Salesforce
######################################################

export SF_SOURCE_TRACKING_BATCH_SIZE=8000

######################################################
# Python
######################################################

addToPATH "$(brew --prefix python)/libexec/bin"
addToPATH "$HOME/.local/bin"
