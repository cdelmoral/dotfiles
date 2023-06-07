######################################################
# System aliases and exports
######################################################

alias cdcore="cd ~/Projects/FNDS/P-PLTFM-Core"
alias catk="cat ${HOME}/.config/zsh/config.d/komodo.zsh"

######################################################
# sfdx
######################################################


alias dxol="sfdx org list"
alias dxdu="sfdx config get target-org"

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

