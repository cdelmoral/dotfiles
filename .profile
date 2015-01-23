######################################################
# Prompt configuration
######################################################

function myprompt {
   EXITSTATUS="$?"
   BOLD="\[\033[1m\]"
   RED="\[\033[1;31m\]"
   GREEN="\[\e[32;1m\]"
   BLUE="\[\e[34;1m\]"
   OFF="\[\033[m\]"
   CHECK="\342\234\223"
   CROSS="\342\234\227"

   if [ "${EXITSTATUS}" -eq 0 ]
   then
      PROMPT="${BOLD}[${GREEN}${CHECK}${OFF} "
   else
      PROMPT="${BOLD}[${RED}${CROSS}${OFF} "
   fi
   PS1="${PROMPT}${BOLD}\u \w]\n\t \$${OFF} "

   PS2="${BOLD}>${OFF} "
}

PROMPT_COMMAND=myprompt
export CLICOLOR=1

######################################################
# System aliases and exports
######################################################

alias ll="ls -al"
alias psx="ps -ef"

export EDITOR=sublime

######################################################
# Homebrew
######################################################

export BREW_HOME="/usr/local/Cellar"

######################################################
# Python's pip
######################################################

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# function to install packages into our global site-packages
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

#########################################################
# Path configuration
#########################################################

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

echo ".profile PATH = " ${PATH}