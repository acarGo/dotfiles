#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias

alias ls='ls --color=auto'
alias go='startx'
alias JGR='/home/adrian/workspace/R/packages/JGR/scripts/run'
alias onhtpc='wol XX:XX:XX:XX:XX:XX'
alias packettracer='/opt/pt/bin/PacketTracer5'
alias visualparadigm='/home/adrian/Dropbox/Universidad/2/Ingeniería\ del\ Software/Visual_Paradigm_11.0/bin/Visual_Paradigm_for_UML'
alias goUni='cd /home/adrian/Dropbox/Universidad/'

# Prompt

# PS1='\[\e[1;34m\]┌─[\e[m\]\[\e[1;36m\] \u \[\e[m\]\[\e[1;34m\]]─[\[\e[m\]\[\e[1;36m\] \h \[\e[m\]\[\e[1;34m\]]─[\[\e[m\]\[\e[1;36m\] \W \[\e[m\]\[\e[1;34m\]]\n└───\[\e[m\]\[\e[1;36m\]>> \[\e[m\]'

# PS1='\[\e[1;34m\][\[\e[1;36m\] \u \[\e[m\]\[\e[1;34m\]]-[\[\e[1;36m\] \W \[\e[m\]\[\e[1;34m\]]-\[\e[1;36m\]>> \[\e[m\]'

# PS1='\[\e[34m\][\[\e[32m\] \W \[\e[m\]\[\e[34m\]] \[\e[32m\]>> \[\e[m\]' 

# PS1='\[\e[34m\]██ [\[\e[32m\] \W \[\e[m\]\[\e[34m\]]\[\e[32m\]\n██ >> \[\e[m\]'

PS1='\[\e[1;34m\]┌─[\e[m\]\[\e[1;36m\] \W \[\e[m\]\[\e[1;34m\]\[\e[1;34m\]]\n└───\[\e[m\]\[\e[1;36m\]>> \[\e[m\]'

# Functions

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

function fuck() {
    killall -9 $2;
    if [ $? == 0 ]
    then
       echo
       echo " (╯°□°）╯~$(echo $2|flip &2>/dev/null)"
       echo
    fi
}

# Variables
export TERM=rxvt-unicode-256color
# export TERMINAL=urxvt
export LANG=es_ES.utf8
export EDITOR="vim"
umask 077
PATH=$PATH:$HOME/.rvm/bin/ # Add RVM to PATH for scripting
