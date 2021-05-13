# alias for diagnosing sleep issues on hackintosh
alias sleepless="pmset -g assertions | egrep '(PreventUserIdleSystemSleep|PreventUserIdleDisplaySleep)'"

# show hidden files
alias hidden='ls -a | grep "^\."'

# edit most recently modified file
alias vimr='vim `ls -rt | tail -n 1`'

alias pip=pip3

# export mysql to path
export PATH="/usr/local/mysql/bin:$PATH"

export PATH="$PATH:$HOME/flutter/bin"
