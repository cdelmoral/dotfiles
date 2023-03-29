######################################################
# System aliases and exports
######################################################

alias cdcore="cd ~/Projects/FNDS/P-PLTFM-Core"
alias catk="cat ${HOME}/.config/zsh/config.d/komodo.zsh"

######################################################
# sfdx
######################################################

export SFDX_AUTOUPDATE_DISABLE=true

alias dxol="sfdx force:org:list"
alias dxdu="sfdx force:config:get defaultusername"

# Copies the scratch org login url to the clipboard
dxopen() {
    login_command="sfdx force:org:open -r --json"

    if ! [ $# -eq 0 ]
    then
        login_command+=" -u $1"
    fi

    echo "Executing: $login_command"

    login_url=$(eval $login_command | jq -r ".result.url" )
    echo $login_url | pbcopy
    echo "Result has been copied to the clipboard."
}

# sfdx autocomplete setup
SFDX_AC_ZSH_SETUP_PATH=/Users/cdelmoral/Library/Caches/sfdx/autocomplete/zsh_setup
test -f $SFDX_AC_ZSH_SETUP_PATH
source $SFDX_AC_ZSH_SETUP_PATH;

######################################################
# 1Password
######################################################

# Reads the PLTFM Salesforce Packages Install Key from 1Password
oppltfm() {
    eval $(op signin komodohealth)
    export PLTFM_CORE_INSTALL_KEY=$(op get item 'PLTFM Salesforce Packages Install Key' --fields password)
}

######################################################
# Python
######################################################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || addToPATH $PYENV_ROOT/bin
eval "$(pyenv init -)"

