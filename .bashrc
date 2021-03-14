
# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
#    . ~/.bashrc
#fi

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# export mysql to path
export PATH="/usr/local/mysql/bin:$PATH"

# display gnu-screen window number in terminal
 PS1='[\u@\h \W'
 if [ "$WINDOW" ]; then PS1="$PS1 ($WINDOW)"; fi
 PS1="$PS1]$"

# shell prompt
STARTCOLORGREEN='\[\e[1;32m\]';
STARTCOLORBLUE='\[\e[1;34m\]';
ENDCOLOR='\[\e[0m\]'
export PS1="$STARTCOLORGREEN\u@\h$ENDCOLOR:$STARTCOLORBLUE\w $ENDCOLOR$ "

export DISPLAY=:0
