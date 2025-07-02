######################################################
# oh-my-zsh
######################################################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(aws git)
source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  dir           # Current directory
  git           # Git branch + status
  node          # Node.js version (via fnm)
  aws           # AWS profile/region
  exec_time     # Duration of last command (if > threshold)
  line_sep      # Line break
  exit_code     # Exit code of last command
  char          # Final prompt character
)

SPACESHIP_AWS_SYMBOL=''
SPACESHIP_NODE_PREFIX='with '
SPACESHIP_CHAR_SYMBOL_ROOT="#"

######################################################
# System aliases and exports
######################################################

alias ll="ls -alh"
alias psx="ps -ef"
alias catp="cat ${HOME}/.zshrc"
bindkey -s ^f "tmux-sessionizer\n"

######################################################
# fnm
######################################################

eval "$(fnm env --use-on-cd --shell zsh)"

######################################################
# Salesforce
######################################################

export SF_SOURCE_TRACKING_BATCH_SIZE=8000
export SF_NEW_VERSION_CHECK_FREQ=1
export SF_NEW_VERSION_CHECK_FREQ_UNIT=days

alias sfac="$(sf autocomplete script zsh)"


######################################################
# fzf
######################################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

######################################################
# git
######################################################

alias gplog="git log --oneline --graph --decorate --all | fzf"

######################################################
# tmux
######################################################

alias ta="tmux attach"

######################################################
# Homebrew
######################################################

export HOMEBREW_NO_ENV_HINTS=true
