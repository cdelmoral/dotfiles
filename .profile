echo "/etc/profile = " ${PATH}

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
      PROMPT="\n${BOLD}[${GREEN}${CHECK}${OFF} "
   else
      PROMPT="\n${BOLD}[${RED}${CROSS}${OFF} "
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
alias catp="cat ${HOME}/.profile"

######################################################
# SVN
######################################################

alias svnmissing='svn st | grep ^! | awk '\''{print " --force "$2}'\'' | xargs svn rm'
alias svnnew='svn st | grep ^? | awk '\''{print " --force "$2}'\'' | xargs svn add'

export EDITOR=sublime

######################################################
# Homebrew
######################################################

export BREW_HOME="/usr/local/Cellar"

alias cdbrew="cd ${BREW_HOME}; ll"

######################################################
# Tomcat
######################################################

export CATALINA_HOME="/usr/local/Cellar/tomcat/7.0.47/libexec"
alias tomlog="tail -f ${CATALINA_HOME}/logs/catalina.out"

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

# directory to hold the virtual environments
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

######################################################
# Ruby
######################################################

eval "$(rbenv init -)"

#########################################################
# Path configuration
#########################################################

export PATH="/Users/carlos/.virtualenvs/default/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

echo ".profile PATH = " ${PATH}

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
