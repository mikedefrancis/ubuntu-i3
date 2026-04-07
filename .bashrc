# ~/.bashrc: executed by bash(1) for non-login shells.
# Optimized to preserve original behavior while improving startup speed.

# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return ;;
esac

# ------------------------------
# PATH / environment
# ------------------------------

path_prepend() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1:$PATH" ;;
    esac
}

path_append() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$PATH:$1" ;;
    esac
}

# personal scripts dir
path_prepend "$HOME/bin"
path_append "$HOME/.local/bin"
export PATH

export EDITOR='vim'

# alias python='python3.13'
# alias pip='pip3.13'

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# setxkbmap -option caps:none
# export LIBGL_ALWAYS_SOFTWARE=1

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
# shopt -s globstar

# make less more friendly for non-text input files
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# ------------------------------
# Dead oh-my-bash config removed
# ------------------------------
# The original file had many oh-my-bash variables defined, but the actual:
#   source "$OSH"/oh-my-bash.sh
# line was commented out, so none of that code was doing anything.
# It has been removed for speed and clarity.

# ------------------------------
# Functions
# ------------------------------

mkcd() {
    [[ $# -eq 1 ]] || { echo "usage: mkcd <dir>" >&2; return 1; }
    mkdir -p -- "$1" && cd -- "$1"
}

extract() {
    if [ $# -ne 1 ]; then
        echo "usage: extract <archive>" >&2
        return 1
    fi

    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xvjf -- "$1" ;;
            *.tar.gz)  tar xvzf -- "$1" ;;
            *.bz2)     bunzip2 -- "$1" ;;
            *.rar)     unrar x -- "$1" ;;
            *.gz)      gunzip -- "$1" ;;
            *.tar)     tar xvf -- "$1" ;;
            *.tbz2)    tar xvjf -- "$1" ;;
            *.tgz)     tar xvzf -- "$1" ;;
            *.zip)     unzip -- "$1" ;;
            *.Z)       uncompress -- "$1" ;;
            *.7z)      7z x -- "$1" ;;
            *)         echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
        return 1
    fi
}

killapp() {
    [ $# -ge 1 ] || { echo "usage: killapp <process-name>" >&2; return 1; }
    pidof "$1" | xargs kill
}

# BASH auto-ls
cd() {
    builtin cd "$@" && ls
}

# ------------------------------
# Prompt / colors
# ------------------------------

alias binwalkold='/usr/bin/binwalk'
alias opera='opera &'
alias xx='exit'
alias x='exit'
alias xxx='exit'
alias xxxx='exit'



# set variable identifying the chroot you work in
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(< /etc/debian_chroot)
fi

# Keep the original color logic, but force color by default since you asked for it.
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes ;;
    *) color_prompt=yes ;;
esac

force_color_prompt=yes

if [ -n "${force_color_prompt:-}" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "${color_prompt:-}" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
esac

# enable color support of ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi

    alias ls='ls --color=auto'
    # alias dir='dir --color=auto'
    # alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Local user aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# source ~/usertools/user_pyenv_1/bin/activate

# ------------------------------
# GIT
# ------------------------------

# i3
alias workspace='i3 rename workspace to '
alias i3show='wmctrl -l'
alias psall='ps -e'

# git stuff
alias ggraph='gitk &'
alias gcommit='git commit -m'
alias gcom='git commit -m'
alias gpush='git push'
alias gcheckout='git checkout'
alias gpull='git pull --rebase'
alias gitstat='git status'
alias gitstatus='git status'
alias gstat='git status'
alias gdiff='git diff'
alias glog='git log --all'
alias gsta='git status'
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
alias greset='git reset --hard HEAD; git clean -fd'

# hg aliases removed per request

# ------------------------------
# NAV SYSTEM
# ------------------------------

# place a tunnel in the user home
# redirect the tunnel to current location
alias tun='rm ~/tun; ln -sf "$(pwd)" ~/tun'
alias tunnel='rm ~/tunnel; ln -sf "$(pwd)" ~/tunnel'
alias tunnel2='rm ~/tunnel2; ln -sf "$(pwd)" ~/tunnel2'
alias tunnel3='rm ~/tunnel3; ln -sf "$(pwd)" ~/tunnel3'

alias ff='nautilus .'
alias folder='nautilus --no-desktop .'
alias folders='nautilus --no-desktop .'
alias nautilusi3='nautilus --no-desktop .'

# warning! undefining something does not remove the alias from shells that have previously sourced this
alias tt='alacritty'

# final effective save/ret behavior from the original file
alias save='cdb -d save; cdb -c save'
alias ret='cdb -g save'

alias sret='pushd .'
alias back='cd -; ls'
alias home='pushd .; cd ~; ls'
alias jump='pushd .; cd '

# find the process by searching for its name:
alias findproc='ps -A | grep'
alias killproc='kill'

# get rid of command not found
alias cd..='cd ..'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# quick ways to move up
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'
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
alias c='clear'
alias cc='clear'
alias clear='clear; ls'

# added the following for the bookmarking script
if [ -f ~/.cdb ]; then
    . ~/.cdb
fi

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

alias savei3portal='cdb -d i3portal; cdb -c i3portal'
alias reti3portal='cdb -g i3portal'

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

# some aliases to use cdb
alias bmark='cdb -c'
alias bmk='cdb -c'
alias bjump='cdb -g'
alias bgo='cdb -g'
alias bmarks='cdb -l'
alias bmks='cdb -l'
alias bdel='cdb -d'

# ------------------------------
# CHEAT SYSTEM
# ------------------------------

# show custom cheatsheet
alias cheats="echo 'acheat(add) || dcheat[#](del) || cheat#(run #) || pushcheats(archive all) || echeats(edit) || oldcheats(see archive)'; test -f ~/.arc/cheats.txt && less -N ~/.arc/cheats.txt"
alias cheat='cheats'
alias echeats='vi ~/.arc/cheats.txt'
alias ccheats='cat ~/.arc/cheats.txt'
alias acheat='echo "use '\''echo !! >> CHEATS'\'' or '\''echo [CTRL-R] >> CHEATS'\'' or '\''echo [UP ARROW] >> CHEATS'\''"'
alias dcheat='sed -i '\''$ d'\'' ~/.arc/cheats.txt; cheats'
alias pushcheats='cat ~/.arc/cheats.txt >> ~/.arc/oldcheats.txt; rm ~/.arc/cheats.txt; touch ~/.arc/cheats.txt; cheats'

# archival cheatsheet
alias oldcheats="echo 'ARCHIVE OF CHEATS'; test -f ~/.arc/oldcheats.txt && less -N ~/.arc/oldcheats.txt"
alias eoldcheats='vi ~/.arc/oldcheats.txt'
alias coldcheats='cat ~/.arc/oldcheats.txt'

# generate the numbered cheat aliases instead of listing 60 lines manually
for _i in $(seq 1 30); do
    alias "dcheat${_i}=sed -i.bak -e '${_i}d' CHEATS; cheats"
    alias "cheat${_i}=sed ${_i}!d CHEATS | xclip; echo \"MIDDLE MOUSE or SHIFT+INSERT to paste cmd\""
done
unset _i

### END CUSTOM CHEATS ###

# ------------------------------
# SPECIAL / IMPORTANT
# ------------------------------

# i3 LOGOUT HACK
alias logout='i3-msg exit'

# hack to fix vmware tools on i3 if it didn't auto-load the things
alias vmware-restart='vmware-user-suid-wrapper'
# alias vmware='vmware-user-suid-wrapper'
alias vmware-user='vmware-user-suid-wrapper'
alias vmware-fix='vmware-user-suid-wrapper'

# NOTES
alias notes='vim ~/notes.md'
# alias obsidian='gdrive; ~/usertools/obsidian/Obsidian-1.7.4.AppImage &'
# OLD BELOW. USING OBSIDIAN NOW
# for using my todo list
# using save5 / ret5 as a scratch space to jump forward and back between folders
# alias cnotes='ls ~/notes/;cat ~/notes/notes.txt | more'
# alias notes='vnotes'
# alias bnotes='less -g ~/notes/notes.txt'
# alias allnotes='vim ~/notes/archivenotes.txt'
# alias vnotes='save5;cd ~/notes;vim ~/notes/notes.txt;ret5'
# alias editnotes='vnotes'
# alias enotes='vnotes'
# alias dnotes='echo USE delnotes to delete all notes'
# alias delnotes='savenotes;rm ~/notes/notes.txt'
# alias savenotes='cp ~/notes/notes.txt ~/notes/prevnotes.txt;cat ~/notes/prevnotes.txt >> ~/notes/archivenotes.txt'

alias dirsize='du -d 1'

# ------------------------------
# PROGRAM ALIASES
# ------------------------------

# adb stuff
alias devices='adb devices'
alias shell='adb shell'
alias logcat='adb logcat'

# docker
alias dockerps='docker ps'
alias dps='docker ps'
alias dockerimages='docker images'
alias dimages='docker images'
alias dkillall='docker kill $(docker ps -a -q)'
alias drmall='docker rm $(docker ps -a -q)'
alias dexec='docker exec'
alias dshell='docker exec -it bash'

alias disk='df'
alias chrome='chromium-browser'

alias calc='gnome-calculator'
alias calculator='gnome-calculator'

alias bb='bash'
alias zz='zsh'

alias mkill='kill -9'
alias killall='kill -9'
alias forcekill='kill -9'

# ghidra
export GHIDRA_SERVER='ghidra.zetier.com'
alias ghidra='/home/mike.defrancis/usertools/ghidra/ghidra_11.4.3_PUBLIC/ghidraRun'
export GHIDRA_ROOT='/home/mike.defrancis/usertools/ghidra/ghidra_11.4.3_PUBLIC'

# python virtual environment
alias activate='source ~/usertools/user_pyenv_1/bin/activate'
alias activate_venv='source ~/usertools/user_pyenv_1/bin/activate'
alias deactivate_venv='deactivate'

# python
# alias python='python3'

# signal
alias signal='signal-desktop &'

# vscode
alias vscode='code'
alias vs='code'

alias lock='i3lock -i ~/.config/i3/voyager2.png'

# vim
alias vi='vim'
alias vv='vim'
alias v='vim'
alias vim='vim -p'
alias editbash='vim ~/.bashrc'
alias srcbash='source ~/.bashrc'
alias zsource='source ~/.zshrc'
alias srczsh='source ~/.zshrc'
alias sourcebash='source ~/.bashrc'
alias sourcezsh='source ~/.zshrc'
alias srcz='source ~/.zshrc'
alias sourcez='source ~/.zshrc'

# ------------------------------
# FIND / GREP
# ------------------------------

alias make='make'
alias makec='make clean; ls'
alias remake='make clean; ls; make'
alias mmake='make |& tee latest_make_output.txt; ls'
alias mclean='make clean; ls'
alias i='ifconfig -a'
alias ifconfig='ifconfig -a'
alias ffind='find . -type f -name'
alias dfind='find . -type d -name'
alias afind='find . -name'
alias agrep='grep --color -rni'
alias aclip='xclip -sel clip'
alias mclip='xclip -sel clip'

# ------------------------------
# RANDOM STUFF
# ------------------------------

alias src='source'
alias vihelp='echo use vi +[LineNum] [file] || vi [file]'
alias catl='cat -n'

alias nc4242='netcat -l -p 4242'
alias 010='010editor'
alias lemmein='sudo docker exec -it $(sudo docker ps -l -q) /bin/bash'
alias cleartrash='rm -rf ~/.local/share/Trash/*'
alias kernelversion='uname -a'
alias hex='ghex'

alias gmount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gdrive='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gdrivemount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'
alias gdriveunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'

# removed per request:
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
# feh --bg-scale ~/.config/i3/voyager.jpg
# ssh-agent startup / ssh-add block

touch ~/.onetime_exec_completed

# so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

# ------------------------------
# NVM (lazy-loaded)
# ------------------------------

export NVM_DIR="$HOME/.nvm"

__load_nvm() {
    unset -f __load_nvm nvm node npm npx corepack
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

nvm() {
    __load_nvm
    nvm "$@"
}

node() {
    __load_nvm
    node "$@"
}

npm() {
    __load_nvm
    npm "$@"
}

npx() {
    __load_nvm
    npx "$@"
}

corepack() {
    __load_nvm
    corepack "$@"
}
