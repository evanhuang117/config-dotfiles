
# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#    . ~/.bashrc
#fi

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# display gnu-screen window number in terminal
 PS1='[\u@\h \W'
 if [ "$WINDOW" ]; then PS1="$PS1 ($WINDOW)"; fi
 PS1="$PS1]$"

# shell prompt
STARTCOLOR='\e[0;34m';
ENDCOLOR="\e[0m"
export PS1="$STARTCOLOR\u@\h \w> $ENDCOLOR"
