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

# MAY 2018 UPDATE:
setopt AUTO_CD

# only fools wouldn't do this ;-)
export EDITOR="vi"

alias -g G="| grep"
alias -g L="| less"

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

##############################################################################
# History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

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
alias back='cd -;ls'
alias home='pushd .; cd ~;ls'
alias jump='pushd .; cd '
# find the process by searching for its name:
alias findproc='ps -A | grep'
alias killproc='kill'
## get rid of command not found ##

alias untarz='tar -xzf'
alias untarj='tar -xjf'


## a quick way to get out of current directory ##
alias cd..='cd ..'
alias cd../..='cd ../..'
alias cd../../..='cd ../../../'
alias cd../../../..='cd ../../../..'
alias cd../../../../..='cd ../../../../..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias c='clear'
# save standard err and standard out to make output file:    
alias make='make'
alias mmake='make |& tee latest_make_output.txt'
alias mclean='make clean'
alias i='ifconfig -a'    
alias ifconfig='ifconfig -a'    
alias ffind='find . -type f -name'    
alias dfind='find . -type d -name'    
alias afind='find . -name'
alias agrep='grep --color -rni'
alias aclip='xclip -sel clip'

# pipe aliases 
alias -g AGREP="| grep --color -ni"
alias -g ACLIP="| xclip -sel clip"
alias -g XCLIP="| xclip"
alias -g ALESS="| less"
alias -g XARGS="| xargs"
alias -g APIPE="|& tee redirect.txt"

### CUSTOM CHEAT SYSTEM ###

# show custom cheatsheet
alias cheats="echo 'acheat(add) || dcheat[#](del) || cheat#(run #) || pushcheats(archive all) || echeats(edit) || oldcheats(see archive)'; test -f ~/.arc/cheats.txt && less -N ~/.arc/cheats.txt"
alias cheat="cheats"
alias echeats="vi ~/.arc/cheats.txt"
alias ccheats="cat ~/.arc/cheats.txt"
alias -g CHEATS="~/.arc/cheats.txt"
alias acheat="echo \"use 'echo !! >> CHEATS' or 'echo [CTRL-R] >> CHEATS' or 'echo [UP ARROW] >> CHEATS'\""
alias dcheat="sed -i '$ d' ~/.arc/cheats.txt; cheats" 
alias pushcheats="cat ~/.arc/cheats.txt >> ~/.arc/oldcheats.txt;rm ~/.arc/cheats.txt; touch ~/.arc/cheats.txt; cheats" 

# archival cheatsheet
alias oldcheats="echo 'ARCHIVE OF CHEATS'; test -f ~/.arc/oldcheats.txt && less -N ~/.arc/oldcheats.txt"
alias eoldcheats="vi ~/.arc/oldcheats.txt"
alias coldcheats="cat ~/.arc/oldcheats.txt"
alias -g OLDCHEATS="~/.arc/oldcheats.txt"

# del cheats
alias dcheat1="sed -i.bak -e '1d' CHEATS; cheats"
alias dcheat2="sed -i.bak -e '2d' CHEATS; cheats"
alias dcheat3="sed -i.bak -e '3d' CHEATS; cheats"
alias dcheat4="sed -i.bak -e '4d' CHEATS; cheats"
alias dcheat5="sed -i.bak -e '5d' CHEATS; cheats"
alias dcheat6="sed -i.bak -e '6d' CHEATS; cheats"
alias dcheat7="sed -i.bak -e '7d' CHEATS; cheats"
alias dcheat8="sed -i.bak -e '8d' CHEATS; cheats"
alias dcheat9="sed -i.bak -e '9d' CHEATS; cheats"
alias dcheat10="sed -i.bak -e '10d' CHEATS; cheats"

# run cheats
alias cheat1="sed 1!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat2="sed 2!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat3="sed 3!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat4="sed 4!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat5="sed 5!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat6="sed 6!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat7="sed 7!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat8="sed 8!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat9="sed 9!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat10="sed 10!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""

### END CUSTOM CHEATS ###

alias vi='vim'                                               
alias vihelp='echo use vi +[LineNum] [file] || vi [file]'    
alias catl='cat -n' #cat with some lines numbers    
                                                    
# added the following for the bookmarking script    
if [ -f ~/.cdb ]; then    
    source ~/.cdb    
fi    
           
alias save='cdb -d save; cdb -c save'
alias ret='cdb -g save'

alias save1='cdb -d save1; cdb -c save1'
alias ret1='cdb -g save1'

alias save2='cdb -d save2; cdb -c save2'
alias ret2='cdb -g save2'

alias save3='cdb -d save3; cdb -c save3'
alias ret3='cdb -g save3'

alias save4='cdb -d save4; cdb -c save4'
alias ret4='cdb -g save4'

alias save5='cdb -d save5; cdb -c save5'
alias ret5='cdb -g save5'

alias mark='cdb -c'

alias places='cdb -l'
alias marks='cdb -l'
alias saves='cdb -l'
alias goto='cdb -g'

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
# using save5 / ret5 as a scratch space to jump forward and back between folders
alias cnotes='ls ~/notes/;cat ~/notes/notes.txt | more'    
alias notes='vnotes'                        
alias bnotes='less -g ~/notes/notes.txt'
alias allnotes='vim ~/notes/archivenotes.txt'    
alias vnotes='save5;cd ~/notes;vim ~/notes/notes.txt;ret5'    
alias editnotes='vnotes'    
alias enotes='vnotes'                                   
alias dnotes='echo USE delnotes to delete all notes'    
alias delnotes='savenotes;rm ~/notes/notes.txt'
alias savenotes='cp ~/notes/notes.txt ~/notes/prevnotes.txt;cat ~/notes/prevnotes.txt >> ~/notes/archivenotes.txt'

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

alias mkill='kill -9'
alias killall='kill -9'
alias forcekill='kill -9'

alias nc4242='netcat -l -p 4242'

alias 010='010editor'

alias sourcezsh='source ~/.zshrc'

alias lemmein='sudo docker exec -it $(sudo docker ps -l -q) /bin/bash'

alias cleartrash='rm -rf ~/.local/share/Trash/*'

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

source ~/.oh-my-zsh/plugins/auto-ls.zsh

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias kernelversion='uname -a'

PATH=$PATH:/home/dev/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 E7E8397D-1D9A-AC03-24EE-9E64B4083A05
