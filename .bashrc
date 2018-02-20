# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
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
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

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
# alias cat='cat -n'
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
        
                                
# for using my todo list                  
alias cnotes='cat ~/.notes.txt | more'    
alias notes='cnotes'                        
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

alias gitstat='git status'
alias ggg='git status'
alias bb='bash'
alias zz='zsh'

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
