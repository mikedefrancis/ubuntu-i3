# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

export EDITOR='vim'

# export LIBGL_ALWAYS_SOFTWARE=1

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth


# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/mike.defrancis/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="rana"

# If you set OSH_THEME to "random", you can ignore themes you don't like.
# OMB_THEME_RANDOM_IGNORED=("powerbash10k" "wanelo")
# You can also specify the list from which a theme is randomly selected:
# OMB_THEME_RANDOM_CANDIDATES=("font" "powerline-light" "minimal")

# Uncomment the following line to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

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

# Uncomment the following line if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment the following line if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# To enable/disable Spack environment information
# OMB_PROMPT_SHOW_SPACK_ENV=true  # enable
# OMB_PROMPT_SHOW_SPACK_ENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

# If you want to reduce the initialization cost of the "tput" command to
# initialize color escape sequences, you can uncomment the following setting.
# This disables the use of the "tput" command, and the escape sequences are
# initialized to be the ANSI version:
#
#OMB_TERM_USE_TPUT=no

source "$OSH"/oh-my-bash.sh

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

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"









# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=200000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


alias binwalkold='/usr/bin/binwalk'

alias opera='opera &'

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

source ~/usertools/user_pyenv_1/bin/activate


####################################
#       GIT AND MERCURIAL

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

# hg stuff
alias hgbranch='hg branch'
alias hgbr='hg branch'
alias hgstatus='hg status'
alias hgstat='hg status'
alias hgrevert='hg revert'
alias hgcommit='hg commit'
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

# i3
alias workspace='i3 rename workspace to '

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
alias clear='clear;ls'

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
# alias vmware='vmware-user-suid-wrapper'
alias vmware-user='vmware-user-suid-wrapper'
alias vmware-fix='vmware-user-suid-wrapper'

#  NOTES
alias notes='gdrive; ~/usertools/obsidian/Obsidian-1.7.4.AppImage &'
alias obsidian='gdrive; ~/usertools/obsidian/Obsidian-1.7.4.AppImage &'
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

alias dirsize='du -d 1'

killapp ()
{
    pidof $1 | xargs kill
}

# BASH auto-ls
cd() {
    builtin cd "$@" && ls
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
alias forcekill='kill -9'g

#ghidra
export GHIDRA_SERVER='ghidra.zetier.com'
alias ghidra='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.1_PUBLIC/ghidraRun'
export GHIDRA_ROOT='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.1_PUBLIC'
# alias ghidra='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.2_PUBLIC/ghidraRun'
# export GHIDRA_ROOT='/home/mike.defrancis/usertools/ghidra/ghidra_11.1.2_PUBLIC'

#python virtual environment
alias activate='source ~/usertools/user_pyenv_1/bin/activate'
alias activate_venv='source ~/usertools/user_pyenv_1/bin/activate'
alias deactivate_venv='deactivate'

#python
alias python='python3'

#signal
alias signal='signal-desktop &'

#vscode
alias vscode='code'
alias vs='code'

alias lock='i3lock -i ~/.config/i3/voyager.png'


# VIM
alias vi='vim'
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

alias gmount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gdrive='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gdrivemount='rclone mount gdrive: /home/mike.defrancis/usertools/google_drive &'
alias gunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'
alias gdriveunmount='fusermount -uz /home/mike.defrancis/usertools/google_drive'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

feh --bg-scale ~/.config/i3/voyager.jpg

setxkbmap -option ctrl:nocaps

# Start ssh-agent if it’s not already running
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi
eval $(keychain --eval --agents ssh id_rsa)

touch ~/.onetime_exec_completed

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

# Created by `pipx` on 2024-12-05 15:31:27
export PATH="$PATH:/home/mike.defrancis/.local/bin"
. "$HOME/.cargo/env"
