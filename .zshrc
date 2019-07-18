# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

export NDK_ROOT=/home/dev/ndk/android-ndk-r15b

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export EDITOR='vim'

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
  z
  # history
  # mercurial
  # hg
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

# ADDING THESE THINGS BECAUSE THEY ARE AWESOME
source ~/.oh-my-zsh/plugins/auto-ls.zsh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


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
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

####################################
#       GIT AND MERCURIAL

# git stuff
alias gcommit='git commit -m'
alias gcom='git commit -m'
alias gpush='git push'
alias gcheckout='git checkout'
alias gpull='git pull'
alias gitstat='git status'
alias gitstatus='git status'
alias gstat='git status'
alias gitbranch='git branch'
alias gitbr='git branch'
alias gbranch='git branch'
alias gbr='git branch'
alias gconfig='git config'
alias gitconf='git config'
alias gitconfig='git config'
alias gadd='git add'
alias grm='git rm'
alias ggg='git status'

# hg stuff
alias hgbranch='hg branch'
alias hgbr='hg branch'
alias hgstatus='hg status'
alias hgstat='hg status'
alias hgrevert='hg revert'
alias hgcommit='hg commit -m'
alias hgadd='hg add'
alias hgremove='hg remove'
alias hgpush='hg push'
alias hgcheckout='hg checkout'
alias hgmerge='hg merge'
alias hgupdate='hg update'
alias hgup='hg update'
alias hgpull='hg pull'

##############################
#         NAV SYSTEM

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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

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
alias c='echo "type Control_L fool"'
alias cc='echo "type Control_L fool"'
alias clear='echo "type Control_L fool"'

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

alias dcheat11="sed -i.bak -e '11d' CHEATS; cheats"
alias dcheat12="sed -i.bak -e '12d' CHEATS; cheats"
alias dcheat13="sed -i.bak -e '13d' CHEATS; cheats"
alias dcheat14="sed -i.bak -e '14d' CHEATS; cheats"
alias dcheat15="sed -i.bak -e '15d' CHEATS; cheats"
alias dcheat16="sed -i.bak -e '16d' CHEATS; cheats"
alias dcheat17="sed -i.bak -e '17d' CHEATS; cheats"
alias dcheat18="sed -i.bak -e '18d' CHEATS; cheats"
alias dcheat19="sed -i.bak -e '19d' CHEATS; cheats"
alias dcheat20="sed -i.bak -e '20d' CHEATS; cheats"

alias dcheat21="sed -i.bak -e '21d' CHEATS; cheats"
alias dcheat22="sed -i.bak -e '22d' CHEATS; cheats"
alias dcheat23="sed -i.bak -e '23d' CHEATS; cheats"
alias dcheat24="sed -i.bak -e '24d' CHEATS; cheats"
alias dcheat25="sed -i.bak -e '25d' CHEATS; cheats"
alias dcheat26="sed -i.bak -e '26d' CHEATS; cheats"
alias dcheat27="sed -i.bak -e '27d' CHEATS; cheats"
alias dcheat28="sed -i.bak -e '28d' CHEATS; cheats"
alias dcheat29="sed -i.bak -e '29d' CHEATS; cheats"
alias dcheat30="sed -i.bak -e '30d' CHEATS; cheats"

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

alias cheat11="sed 11!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat12="sed 12!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat13="sed 13!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat14="sed 14!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat15="sed 15!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat16="sed 16!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat17="sed 17!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat18="sed 18!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat19="sed 19!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat20="sed 20!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""

alias cheat21="sed 21!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat22="sed 22!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat23="sed 23!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat24="sed 24!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat25="sed 25!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat26="sed 26!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat27="sed 27!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat28="sed 28!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat29="sed 29!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
alias cheat30="sed 30!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""

### END CUSTOM CHEATS ###

#########################
# SPECIAL / IMPORTANT

# i3 LOGOUT HACK
alias logout='i3-msg exit'

# hack to fix vmware tools on i3 if it didn't auto-load the things
alias vmware-restart='vmware-user-suid-wrapper'
alias vmware='vmware-user-suid-wrapper'
alias vmware-user='vmware-user-suid-wrapper'
alias vmware-fix='vmware-user-suid-wrapper'

#  NOTES
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

mymerge() {
    local ticket=`echo $1 | cut -d_ -f1`
    echo "Pulling default"
    hg pull -b default
    hg up $1
    echo "Merging default into $1"
    hg merge default
    echo "Committing"
    hg commit -m "$ticket: Merged default"
    echo "Closing feature branch $1"
    hg commit --close-branch -m "Closed branch"
    hg up default
    echo "Merging $1 into default"
    hg merge $1
    hg status | grep '^M'
    echo "Committing to default"
    read _ 
    hg commit -m "Merged $1"
    echo "Pushing merge"
    read _ 
    hg push
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

# VIM
alias vi='vim'                                               
alias v='vim'
alias vim='vim -p'
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
alias agrep='grep --color -rni'
alias aclip='xclip -sel clip'
alias mclip='xclip -sel clip'
alias -g AGREP="| grep --color -ni"
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


alias nc4242='netcat -l -p 4242'

alias 010='010editor'

alias sourcezsh='source ~/.zshrc'

alias lemmein='sudo docker exec -it $(sudo docker ps -l -q) /bin/bash'

alias cleartrash='rm -rf ~/.local/share/Trash/*'

alias kernelversion='uname -a'

alias hex='ghex'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PATH=$PATH:/home/dev/010editor;export PATH; # ADDED BY INSTALLER - DO NOT EDIT OR DELETE THIS COMMENT - 87FF8EFC-483D-BCAA-D67D-735CF60410D1 E7E8397D-1D9A-AC03-24EE-9E64B4083A05

feh --bg-scale ~/.config/i3/voyager.jpg

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon
