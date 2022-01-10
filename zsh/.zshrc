# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh


# ******************
# User configuration
# Updated 20200611
# ******************

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# >>> EC <<<

# *** options ***
set -o vi
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY
unsetopt AUTO_CD


# --- environment ---
export EDITOR=vim
export EXECNET_DEBUG=2
export IPWHERE_API_KEY=
export LSCOLORS=ExGxBxDxcxhxHxCHCDEbef
export PROMPT='|%(?.%? %F{green}:).%? %B%F{red}:(%b) %(!.%B%F{red}%n%b.%F{green}%n)%B%F{white}@%m%f%b %(!.%B%F{red}%1~%b.%F{yellow}%1~) %#%f> '


# +++ command history +++
export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
export HISTSIZE=2000


# +++ Python development +++
export DEVPI_HOST=pypi.cime.dev
export PIP_TRUSTED_HOST="$DEVPI_HOST"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=0
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1


# +++ aliases +++

alias acrobat='open -a "/Applications/Adobe Acrobat DC/Adobe Acrobat.app"'
alias activate='source ~/Python-Runtime/bin/activate'
alias env="env | awk '!/TERMCAP/ && !/^\t*:/' | sort"
alias grep='grep --color'
alias ip='ifconfig | awk '\''/^en/ { a = $1; } /inet/ && !/inet6/ && /broadcast/ { printf("%s %s\n", a, $2); }'\'''
if [[ $(uname) == "Darwin" ]]
then
    alias ls='ls -G'
else
    alias ls='ls --color'
fi
alias pudb='PYTHONPATH=. pudb3'
# alias pytest='pip install -e . && pytest -v'
alias pytest='pytest -v'
alias sha2='shasum -a 256 -b'
alias vi=vim
alias wget='wget --no-check-certificate'

# *** Docker ***
alias cki='docker stop'
alias cls='docker ps -a'
alias crm='docker rm'
alias ctail='docker logs -f'
alias ils='docker images'
alias irm='docker rmi'
alias kompose='docker-compose'
alias vls='docker volume ls'
alias vrm='docker volume rm'

# *** Homebrew recommendations ***

export PATH="/usr/local/sbin:$PATH"

