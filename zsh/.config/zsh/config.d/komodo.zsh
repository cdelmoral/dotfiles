######################################################
# Python
######################################################

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
if [ -n "$PS1" -a -n "$BASH_VERSION" ]; then source ~/.bashrc; fi
eval "$(pyenv init -)"

export PATH="/usr/local/opt/awscli@1/bin:$PATH"

######################################################
# CumulusCI
######################################################

export PATH="/Users/cdelmoral/.local/bin:$GOPATH:$PATH"

