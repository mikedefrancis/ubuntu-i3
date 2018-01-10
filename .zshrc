# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="bira"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  z
  history
  # zsh-autosuggestions
  colored-man-pages
)

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# ALIASES ADDED BY MPD
# warning! undefining something does not remove the alias from shells that have previously sourced this
alias tt='gnome-terminal'
alias save='pushd .'
alias sret='pushd .'
alias ret='popd;ls'
alias back='cd -;ls'
alias home='pushd .; cd ~;ls'
alias jump='pushd .; cd '
# find the process by searching for its name:
alias findproc='ps -A | grep'
alias killproc='kill'
## get rid of command not found ##
alias cd..='cd ..'
alias untarz='tar -xzf'
alias untarj='tar -xjf'


## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias c='clear'
# save standard err and standard out to make output file:    
alias make='make'
alias mmake='make |& tee latest_make_output.txt'
alias i='ifconfig -a'    
alias ifconfig='ifconfig -a'    
alias ggrep='grep --color -rni'    
alias ffind='find -type f -name'    
alias dfind='find -type d -name'    
alias mfind='find -name'      
alias vi='vim'                                               
alias vihelp='echo use vi +[LineNum] [file] || vi [file]'    
alias catl='cat -n' #cat with some lines numbers    
                                                    
# added the following for the bookmarking script    
if [ -f ~/.cdb ]; then    
    source ~/.cdb    
fi    
                                
#some aliases to use cdb    
alias bmark='cdb -c'    
alias bmk='cdb -c'      
alias bjump='cdb -g'    
alias bgo='cdb -g'       
alias bmarks='cdb -l'    
alias bmks='cdb -l'    
alias bdel='cdb -d'    
                          
alias src='source'    
                               
# for editing this file           
alias editbash='vim ~/.bashrc'      
alias srcbash='source ~/.bashrc'    
alias zsource='source ~/.zshrc'
alias srcz='source ~/.zshrc'
alias sourcez='source ~/.zshrc'
                                
# for using my todo list                  
alias cnotes='cat ~/.notes.txt | more'    
alias notes='cnotes'                        
alias bnotes='less -g ~/.notes.txt'
alias allnotes='vim ~/.archivenotes.txt'    
alias vnotes='vim ~/.notes.txt'    
alias editnotes='vnotes'    
alias enotes='vnotes'                                   
alias dnotes='echo USE delnotes to delete all notes'    
alias delnotes='savenotes;rm ~/.notes.txt'
alias savenotes='cp ~/.notes.txt ~/.prevnotes.txt;cat ~/.prevnotes.txt >> ~/.archivenotes.txt'

alias logout='i3-msg exit'


# place a tunnel in the user home 
# redirect the tunnel to current location
alias tun='rm ~/tun;ln -sf "$(pwd)" ~/tun'
alias tunnel='rm ~/tunnel;ln -sf "$(pwd)" ~/tunnel'
alias tunnel2='rm ~/tunnel2;ln -sf "$(pwd)" ~/tunnel2'
alias tunnel3='rm ~/tunnel3;ln -sf "$(pwd)" ~/tunnel3'
       
alias ff='nautilus .'
alias folder='nautilus --no-desktop .'
alias folders='nautilus --no-desktop .'
alias nautilusi3='nautilus --no-desktop .'

alias v='vim'

alias vim='vim -p'

alias disk=df
alias chrome='chromium-browser'


alias vmware-restart='vmware-user-suid-wrapper'
alias vmware='vmware-user-suid-wrapper'
alias vmware-user='vmware-user-suid-wrapper'
alias vmware-fix='vmware-user-suid-wrapper'

alias calc='gnome-calculator'
alias calculator='gnome-calculator'

alias gcommit='git commit'
alias gpush='git push'
alias gcheckout='git checkout'
alias gpull='git pull'
alias gitstat='git status'
alias gstat='git status'
alias gadd='git add'
alias ggg='git status'
alias bb='bash'
alias zz='zsh'


alias nc4242='netcat -l -p 4242'

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

source ~/.oh-my-zsh/plugins/auto-ls.zsh

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias kernelversion='uname -a'
