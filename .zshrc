# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh
export ZSH=/Users/echarney/.oh-my-zsh

ZSH_CONFIG=${HOME}/.zsh_config
ZSH_CUSTOM=${ZSH_CONFIG}/.zsh_custom

ZSH_THEME="shonin"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $ZSH_CONFIG/aliases.zsh
source $ZSH_CONFIG/functions.zsh
source $ZSH_CONFIG/aws_keys.zsh
source $ZSH_CONFIG/environment_variables.zsh
source $ZSH_CONFIG/python.zsh
