# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

ZSH_TMUX_AUTOSTART=false
ZSH_TMUX_FIXTERM_WITH_256COLOR="screen-256color"
# we need to force 256 colors because gnome-terminal is reported as an 8 colors terminal
ZSH_TMUX_FIXTERM_WITHOUT_256COLOR="screen-256color"
TERM=xterm-256color

export VISUAL=vim
export EDITOR="$VISUAL"

if [ `uname -o` = "Cygwin" ]
then
	ZSH_THEME="muse-custom-cygwin"
	ZSH_CUSTOM=$HOME/.vim/custom
	plugins=(git command-not-found common-aliases fasd npm sudo zsh-syntax-highlighting tmux)
	export SSH_AUTH_SOCK="/cygdrive/c/cygwin64/ssh-socket"
	source $ZSH/oh-my-zsh.sh
else
	ZSH_THEME=""
	ZSH_CUSTOM=$HOME/.dotfiles/custom
	plugins=(gitfast command-not-found common-aliases fasd npm sudo zsh-syntax-highlighting)
	source $ZSH/oh-my-zsh.sh
	#export PATH="/home/valerio/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/valerio/.arc_install/arcanist/bin:/opt/flow"
fi

eval $(dircolors ~/.dotfiles/dircolors.256dark)



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval "$(fasd --init auto zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)"

# Source shell script used to manage variables and configurations valid for this environment only
source $HOME/bin/setenv.sh
autoload -U promptinit; promptinit
prompt pure
# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
