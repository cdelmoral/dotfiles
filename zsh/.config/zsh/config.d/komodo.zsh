######################################################
# System aliases and exports
######################################################

alias catk="cat ${HOME}/.config/zsh/config.d/komodo.zsh"

######################################################
# sfdx
######################################################


alias dxol="sf org list"
alias dxdu="sf config get target-org"

# Copies the scratch org login url to the clipboard
sf_org_open_copy() {
    login_command="sf org open -r --json"

    if ! [ $# -eq 0 ]
    then
        login_command+=" -o $1"
    fi

    echo "Executing: $login_command"

    login_url=$(eval $login_command | jq -r ".result.url" )
    echo $login_url | pbcopy
    echo "Result has been copied to the clipboard."
}

# Define function to initialize sfdx autocomplete
# Do not call by default to avoid unnecessary startup time
sfdx_autocomplete() {
    eval $(sfdx autocomplete script zsh)
}

######################################################
# 1Password
######################################################

# Reads the PLTFM Salesforce Packages Install Key from 1Password
oppltfm() {
    eval $(op signin komodohealth)
    export PLTFM_INSTALL_KEY=$(op get item 'PLTFM Salesforce Packages Install Key' --fields password)
}

######################################################
# Python
######################################################

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || addToPATH $PYENV_ROOT/bin
eval "$(pyenv init -)"

######################################################
# Docker
######################################################

addToPATH $HOME/.docker/bin

######################################################
# Terraform
######################################################

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

######################################################
# OKTA AWS CLI
######################################################

if [[ -f "$HOME/.okta/bash_functions" ]]; then
    . "$HOME/.okta/bash_functions"
fi

if [[ -d "$HOME/.okta/bin" && ":$PATH:" != *":$HOME/.okta/bin:"* ]]; then
    addToPATH $HOME/.okta/bin
fi

