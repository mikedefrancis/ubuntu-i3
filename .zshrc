# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira" #THIS ONE JUST OKAY
# ZSH_THEME="agnoster" #VERY GOOD ONE
ZSH_THEME="bureau" #VERY GOOD ONE
# ZSH_THEME="ys" #THIS ONE IS MEH
# ZSH_THEME="avit" #THIS ONE IS GREAT BUT FOLDER COLORS ARE OFF
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# MAY 2018 UPDATE:
setopt AUTO_CD

setopt aliases
setopt complete_aliases

alias color='bash -c "$(wget -qO- https://git.io/vQgMr)"'

# only fools wouldn't do this ;-)
export EDITOR="vim"

alias grep='rg'

alias -g G="| grep"
alias -g L="| less"

alias pdf='zathura'

alias h='history'

alias fkill='sudo kill -9'

alias opera='opera &; disown'

function run() {
  eval "nohup $* >/dev/null 2>&1 &"
}
# function run() {
#     nohup "$@" >/dev/null 2>&1 &
# }

#eval $(keychain --eval --agents ssh id_rsa)

### 2019 MULTI-TERMINAL MOVEMENT BINDINGS ###
# bind -x '"\C-k": "\S-Page U"'

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
ENABLE_CORRECTION="true"

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
  colored-man-pages
  z
  # history
  # fast-syntax-highlighting
  # fzf-tab
  # zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


##############################################################################
# History Configuration
##############################################################################
HISTSIZE=500000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=500000              #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

# ADDING THESE THINGS BECAUSE THEY ARE AWESOME
source ~/.oh-my-zsh/plugins/auto-ls.zsh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /home/mike.defrancis/usertools/user_pyenv_1/bin/activate

#trying out FZF-TAB
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# custom fzf flags
# NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
# To make fzf-tab follow FZF_DEFAULT_OPTS.
# NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
zstyle ':fzf-tab:*' use-fzf-default-opts yes
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias zshrc='vim ~/.zshrc'
alias bashrc='vim ~/.bashrc'
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

alias screenshot='flameshot &; disown'
alias snapshot='flameshot; & disown'
alias snap='flameshot &; disown'

####################################
#       GIT AND MERCURIAL

# git stuff
alias ggraph='gitk --all &; disown'
alias gk='gitk --all'
alias gitk='gitk --all'
alias glog='git log --all --graph'
alias gl='git log --all --graph'
alias gcommit='git commit -m'
alias gc='git commit -m'
alias gcom='git commit -m'
alias gd='git diff'
alias gdiff='git diff'
alias gpush='git push'
alias gcheckout='git checkout'
alias gpull='git pull --rebase'
alias gitstat='git status'
alias gitstatus='git status'
alias gstat='git status'
alias gitbranch='git branch'
alias gitbr='git branch'
alias gbranch='git branch'
alias gbr='git branch'
# alias gconfig='git config'
alias gitconf='git config'
alias gitconfig='git config'
alias gadd='git add'
alias grm='git rm'
alias ggg='git status'

##############################
#         NAV SYSTEM

# i3
alias workspace='i3 rename workspace to '
alias i3show='wmctrl -l'
alias psall='ps -e'

# place a tunnel in the user home
# redirect the tunnel to current location
alias tun='rm ~/tun;ln -sf "$(pwd)" ~/tun'
alias tunnel='rm ~/tunnel;ln -sf "$(pwd)" ~/tunnel'
alias tunnel2='rm ~/tunnel2;ln -sf "$(pwd)" ~/tunnel2'
alias tunnel3='rm ~/tunnel3;ln -sf "$(pwd)" ~/tunnel3'

# alias ranger='ranger-cd' #careful to avoid recursive aliases
alias f='ranger-cd'
alias fd='ranger-cd'
# alias fd='cd ~/' #fd for fuzzy file search in shell
alias folder='nautilus --no-desktop .'
alias folders='nautilus --no-desktop .'
alias nautilusi3='nautilus --no-desktop .'

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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SOME MORE INSANITY TO MAKE IT POSSIBLE TO CHANGE DIRECTORIES FASTER
## a quick way to get out of current directory ##
alias cd..='cd ..'
alias up="cd .."
alias up2="cd ../.."
alias up3="cd ../../.."
alias up4="cd ../../../.."
alias up5="cd ../../../../.."
alias up6="cd ../../../../../.."
alias up7="cd ../../../../../../.."
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
alias .6='cd ../../../../../..'
alias .7='cd ../../../../../../..'
alias c='echo "use control+l fool"'
alias clear='echo "use control+l fool"'

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
alias bookmark='cdb -c'
alias bookmarks='cdb -l'
alias delbookmark='cdb -d'
alias delmark='cdb -d'
alias gotobookmark='cdb -g'
alias goto='cdb -g'

alias places='cdb -l'
alias marks='cdb -l'
alias saves='cdb -l'

#some aliases to use cdb
alias bmark='cdb -c'
alias bmk='cdb -c'
alias bjump='cdb -g'
alias bgo='cdb -g'
alias bmarks='cdb -l'
alias bmks='cdb -l'
alias bdel='cdb -d'

##############################
#         CHEAT SYSTEM

# show custom cheatsheet
alias cheats="echo 'acheat(add) || dcheat[#](del) || cheat#(run #) || pushcheats(archive all) || echeats(edit) || oldcheats(see archive)'; test -f ~/.arc/cheats.txt && less -N ~/.arc/cheats.txt"
alias cheat="cheats"
alias echeats="vi ~/.arc/cheats.txt"
alias ccheats="cat ~/.arc/cheats.txt"
alias acheat="echo \"use 'echo !! >> CHEATS' or 'echo [CTRL-R] >> CHEATS' or 'echo [UP ARROW] >> CHEATS'\""
alias dcheat="sed -i '$ d' ~/.arc/cheats.txt; cheats"
alias pushcheats="cat ~/.arc/cheats.txt >> ~/.arc/oldcheats.txt;rm ~/.arc/cheats.txt; touch ~/.arc/cheats.txt; cheats"

# archival cheatsheet
alias oldcheats="echo 'ARCHIVE OF CHEATS'; test -f ~/.arc/oldcheats.txt && less -N ~/.arc/oldcheats.txt"
alias eoldcheats="vi ~/.arc/oldcheats.txt"
alias coldcheats="cat ~/.arc/oldcheats.txt"

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

#########################
# SPECIAL / IMPORTANT

# i3 LOGOUT HACK
alias logout='rm -f ~/.my_command_ran; i3-msg exit'

alias poweroff='systemctl poweroff -i'

# hack to fix vmware tools on i3 if it didn't auto-load the things
alias vmware-restart='vmware-user-suid-wrapper'
alias vmware='vmware-user-suid-wrapper'
alias vmware-user='vmware-user-suid-wrapper'
alias vmware-fix='vmware-user-suid-wrapper'

#  NOTES
alias notes='~/usertools/obsidian/Obsidian-1.7.4.AppImage &; disown'
alias obsidian='~/usertools/obsidian/Obsidian-1.7.4.AppImage &; disown'

# extract all of the things
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

alias dirsize='du --max-depth 1'

killapp ()
{
    pidof $1 | xargs kill
}

#########################
#        PROGRAM ALIAS'

# adb stuff
alias devices='adb devices'
alias shell='adb shell'
alias logcat='adb logcat'

# DOCKER
# Some docker aliases
alias dockerps='docker ps'
alias dps='docker ps'
alias dockerimages='docker images'
alias dimages='docker images'
alias dkillall='docker kill $(docker ps -a -q)'
alias drmall='docker rm $(docker ps -a -q)'
alias dexec='docker exec'
alias dshell='docker exec -it bash'

alias disk=df
alias chrome='chromium-browser'

alias calc='gnome-calculator'
alias calculator='gnome-calculator'

alias bb='bash'
alias zz='zsh'

alias mkill='kill -9'
alias killall='kill -9'
alias forcekill='kill -9'

#mattermost
alias mattermost='/opt/mattermost-desktop-5.9.0-linux-x64/mattermost-desktop'

#ghidra
export GHIDRA_SERVER=''
alias ghidra='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.1_PUBLIC/ghidraRun'
export GHIDRA_ROOT='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.1_PUBLIC'
# alias ghidra='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.2_PUBLIC/ghidraRun'
# export GHIDRA_ROOT='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.2_PUBLIC'

#python virtual environment
alias activate='source /home/mike.defrancis/usertools/user_pyenv_1/bin/activate'
alias activate_venv='source /home/mike.defrancis/usertools/user_pyenv_1/bin/activate'
alias deactivate_venv='deactivate'

#python
alias python='python3'

#signal
alias signal='signal-desktop &; disown'

#vscode
alias vscode='code'
alias vs='code'

alias lock='rm -f ~/.my_command_ran; i3lock -i ~/.config/i3/voyager.png'

# VIM
alias vi='vim'
alias v='vim'
alias editbash='vim ~/.bashrc'
alias sourcebash='source ~/.bashrc'
alias sourcezsh='source ~/.zshrc'
alias srczsh='source ~/.zshrc'
alias srcbash='source ~/.bashrc'
alias zsource='source ~/.zshrc'
alias srcz='source ~/.zshrc'
alias sourcez='source ~/.zshrc'

###########################
#  FIND, FIND, GREP

# save standard err and standard out to make output file:
alias make='make'
alias makec='make clean;ls'
alias remake='make clean;ls;make'
alias mmake='make |& tee latest_make_output.txt;ls'
alias mclean='make clean;ls'
alias i='ifconfig -a'
alias ifconfig='ifconfig -a'
alias ffind='find . -type f -name'
alias dfind='find . -type d -name'
alias afind='find . -name'
alias agrep='rg --color -rni'
alias aclip='xclip -sel clip'
alias mclip='xclip -sel clip'
alias -g AGREP="| rg --color -ni"
alias -g ACLIP="| xclip -sel clip"
alias -g XCLIP="| xclip"
alias -g ALESS="| less"
alias -g XARGS="| xargs"
alias -g APIPE="|& tee redirect.txt"


################################
#         RANDOM STUFF
alias src='source'

alias vihelp='echo use vi +[LineNum] [file] || vi [file]'
alias catl='cat -n' #cat with some lines numbers

alias binwalkold='/usr/bin/binwalk'

alias nc4242='netcat -l -p 4242'

alias 010='010editor'

alias sourcezsh='source ~/.zshrc'

alias lemmein='sudo docker exec -it $(sudo docker ps -l -q) /bin/bash'

alias cleartrash='rm -rf ~/.local/share/Trash/*'

alias kernelversion='uname -a'

alias hex='ghex'

alias gmount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &; disown'
alias gdrive='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &; disown'
alias gdrivemount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &; disown'
alias gunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'
alias gdriveunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'

PATH=$PATH:/home/dev/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 E7E8397D-1D9A-AC03-24EE-9E64B4083A05

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ ! -f ~/.my_command_ran ]; then
    feh --bg-scale ~/.config/i3/voyager.jpg

    setxkbmap -option ctrl:nocaps

    # Start ssh-agent if it’s not already running
    if [ -z "${SSH_AUTH_SOCK}" ]; then
        eval "$(ssh-agent -s)"
        ssh-add ~/.ssh/id_rsa
        eval $(keychain --eval --agents ssh id_rsa)
    fi
    touch ~/.my_command_ran
fi

# THIS IS A COOL TRICK TO NAVIGATE
function ranger-cd() {
  tempfile="$(mktemp)"
  ranger --choosedir="$tempfile" "${@:-$PWD}"
  if chosen_dir="$(cat -- "$tempfile")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
    cd -- "$chosen_dir"
  fi
  rm -f -- "$tempfile"
}

# @TOTAL INSANITY. REMAP CD TO JUST USE FZF
# If you run plain `cd`, use fzf to pick a directory
function ff() {
  if [[ $# -eq 0 ]]; then
    local dir
    dir=$(find . -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m) && builtin cd "$dir"
  else
    builtin cd "$@"
  fi
}

# Function to insert a dir path from fzf at cursor position
fzf_insert_directory_path() {
  local dir
  dir=$(find . -type d 2>/dev/null | fzf) || return
  if [[ -n "$dir" ]]; then
    LBUFFER+="$dir"
  fi
  zle reset-prompt
}
zle -N fzf_insert_directory_path

# Function to insert a file path from fzf at cursor position
fzf_insert_file_path() {
  # Use fzf to pick a file
  local file
  file=$(find . -type f 2>/dev/null | fzf) || return
  if [[ -n "$file" ]]; then
    # Insert it at the cursor
    LBUFFER+="$file"
  fi
  zle reset-prompt
}
zle -N fzf_insert_file_path

# MAP LEFTHAND CONTROL HOTKEYS FOR COMMONLY USED FUNCTIONS
# *emacs-like behavior from inside of zsh*
# bindkey -s '^f' 'ff\n'
bindkey -s '^d' 'ranger-cd\n'
bindkey -s '^x' 'vim\n'
bindkey -s '^w' 'tig --all\n'
bindkey -s '^e' 'nautilus . &\n'
bindkey '^Z' fzf_insert_file_path
bindkey '^F' fzf_insert_directory_path  # or pick a different hotkey
bindkey -s '^v' 'find . -iname "*'
bindkey -s '^g' 'rg -ni'
bindkey -s '^t' 'python3\n'

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

# bun completions
[ -s "/home/mike.defrancis/.bun/_bun" ] && source "/home/mike.defrancis/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Created by `pipx` on 2024-12-05 15:31:16
export PATH="$PATH:/home/mike.defrancis/.local/bin"

unsetopt correct
unsetopt correct_all

source ~/.zsh/plugins/zsh-fzf-history-search/zsh-fzf-history-search.plugin.zsh
# source ~/.zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
# source ~/.zsh/plugins/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh
