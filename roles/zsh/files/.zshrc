# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ikonera/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH_PLUGS="$HOME/.zsh/plugins"
ZSH_THEMES="$HOME/.zsh/themes"

# -------------------------------- #
#        THEMES & PLUGINS          #
# -------------------------------- #

source $ZSH_THEMES/spaceship-prompt/spaceship.zsh-theme

source $ZSH_PLUGS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_PLUGS/zsh-completions/zsh-completions.plugin.zsh
source $ZSH_PLUGS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $ZSH_PLUGS/git.zsh
source $ZSH_PLUGS/tmux.zsh
source $ZSH_PLUGS/z.zsh
source $ZSH_PLUGS/zsh-interactive-cd.zsh

# -------------------------------- #
#          THEME CONFIG            #
# -------------------------------- #

SPACESHIP_PROMPT_ORDER=(
	user
	host
	dir
	time
	node
	php
	rust
	docker
	aws
	terraform
	package
	line_sep
	git
	char
)

SPACESHIP_CHAR_SYMBOL=""
SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_CHAR_COLOR_SUCCESS="#9ece6a"
SPACESHIP_CHAR_COLOR_FAILURE="#f7768e"

SPACESHIP_DIR_PREFIX="in "
SPACESHIP_DIR_TRUNC=3
SPACESHIP_DIR_COLOR="#73daca"

SPACESHIP_USER_SHOW=always
SPACESHIP_USER_COLOR="#bb9af7"
SPACESHIP_USER_SUFFIX=''

SPACESHIP_HOST_SHOW=always
SPACESHIP_HOST_PREFIX="@"
SPACESHIP_HOST_SHOW_FULL=true

SPACESHIP_TIME_SHOW=true

SPACESHIP_NODE_SYMBOL=" "

SPACESHIP_DOCKER_SYMBOL=" "

SPACESHIP_PACKAGE_SYMBOL=" "

# -------------------------------- #
#           OTHER STUFF            #
# -------------------------------- #

source ~/.zsh/aliases.zsh
source ~/.zsh/envvars.zsh