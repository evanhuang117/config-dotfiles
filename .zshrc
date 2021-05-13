# source aliases
source $HOME/.bash_aliases


# shell prompt
PROMPT='%(?.%F{green}√.%F{red}?)%f%F{134}[%n]%f:%F{081}%~%f %(!.#.$) '
# show current branch in git
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

source /usr/local/share/antigen/antigen.zsh

antigen bundle sobolevn/wakatime-zsh-plugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply
