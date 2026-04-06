# ~/.bashrc: fast + clean + low latency

# ------------------------------
# Only run in interactive shells
# ------------------------------
case $- in
    *i*) ;;
      *) return ;;
esac

# ------------------------------
# PATH helpers (no duplication)
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

path_prepend "$HOME/bin"
path_append "$HOME/.local/bin"
export PATH

# ------------------------------
# Core environment
# ------------------------------
export EDITOR='vim'

alias python='python3.13'
alias pip='pip3.13'

HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=200000

shopt -s histappend checkwinsize

# ------------------------------
# Functions
# ------------------------------
mkcd() {
    [[ $# -eq 1 ]] || { echo "usage: mkcd <dir>"; return 1; }
    mkdir -p "$1" && cd "$1"
}

extract() {
    case "$1" in
        *.tar.bz2) tar xvjf "$1" ;;
        *.tar.gz)  tar xvzf "$1" ;;
        *.bz2)     bunzip2 "$1" ;;
        *.rar)     unrar x "$1" ;;
        *.gz)      gunzip "$1" ;;
        *.tar)     tar xvf "$1" ;;
        *.zip)     unzip "$1" ;;
        *.7z)      7z x "$1" ;;
        *) echo "unknown archive format" ;;
    esac
}

cd() {
    builtin cd "$@" && ls
}

# ------------------------------
# Prompt (fast)
# ------------------------------
PS1='\u@\h:\w\$ '

# ------------------------------
# Core aliases
# ------------------------------
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'

alias clear='clear; ls'
alias c='clear'
alias cc='clear'

# ------------------------------
# Navigation
# ------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'

alias workspace='i3 rename workspace to '
alias psall='ps -e'

# ------------------------------
# Git (clean set)
# ------------------------------
alias gcommit='git commit -m'
alias gpush='git push'
alias gcheckout='git checkout'
alias gpull='git pull --rebase'
alias gstat='git status'
alias gdiff='git diff'
alias glog='git log --all'
alias gadd='git add'
alias grm='git rm'
alias greset='git reset --hard HEAD; git clean -fd'

# ------------------------------
# Bookmark system (kept)
# ------------------------------
[ -f ~/.cdb ] && . ~/.cdb

alias save='cdb -d save; cdb -c save'
alias ret='cdb -g save'

# ------------------------------
# Programs
# ------------------------------
alias tt='alacritty'
alias notes='vim ~/notes.md'

alias dockerps='docker ps'
alias dps='docker ps'

alias calc='gnome-calculator'
alias lock='i3lock -i ~/.config/i3/voyager2.png'

alias vim='vim -p'
alias v='vim'
alias vi='vim'

# ------------------------------
# Bash completion (kept)
# ------------------------------
if ! shopt -oq posix; then
    [ -f /usr/share/bash-completion/bash_completion ] && \
        . /usr/share/bash-completion/bash_completion
fi

# ------------------------------
# System tweaks
# ------------------------------
stty -ixon

# ------------------------------
# ⚡ NVM (lazy-loaded)
# ------------------------------
export NVM_DIR="$HOME/.nvm"

__load_nvm() {
    unset -f __load_nvm nvm node npm npx corepack
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

nvm() { __load_nvm; nvm "$@"; }
node() { __load_nvm; node "$@"; }
npm()  { __load_nvm; npm "$@"; }
npx()  { __load_nvm; npx "$@"; }
corepack() { __load_nvm; corepack "$@"; }
