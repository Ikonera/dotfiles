# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH_PLUGS="${HOME}/.zsh/plugins"
ZSH_THEMES="${HOME}/.zsh/themes"

# -------------------------------- #
#        THEMES & PLUGINS          #
# -------------------------------- #

source ${ZSH_THEMES}/spaceship/spaceship.zsh-theme
source ${HOME}/.config/spaceship/spaceship.zsh

source ${ZSH_PLUGS}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZSH_PLUGS}/zsh-completions/zsh-completions.plugin.zsh
source ${ZSH_PLUGS}/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ${ZSH_PLUGS}/git.zsh
source ${ZSH_PLUGS}/tmux.zsh
source ${ZSH_PLUGS}/z.zsh
source ${ZSH_PLUGS}/zsh-interactive-cd.zsh

# -------------------------------- #
#           OTHER STUFF            #
# -------------------------------- #

# Private
source ~/.zsh/aliases.zsh
source ~/.zsh/envvars.zsh

# Kubernetes / Helm
# source <(kubectl completion zsh)
source <(helm completion zsh)

# History
eval "$(mcfly init zsh)"
source /usr/share/doc/mcfly/mcfly.bash

