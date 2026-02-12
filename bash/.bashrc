#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias oo='cd /home/alex/Obsidian/Zettelkasten/'
alias or='vim /home/alex/Obsidian/Zettelkasten/inbox/*.md'
alias sb='source ~/.bashrc'
alias ll='nvim ~/.local/state/nvim/lsp.log'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
eval "$(dotnet completions script bash)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOTNET_TOOLS="/home/alex/.dotnet/tools"
export DOTNET_ROOT="/usr/share/dotnet"
export FUNC_ROOT="/home/alex/azure-functions-cli"
export USER_SCRIPTS="/home/alex/bin"
export PATH=$PATH:$FUNC_ROOT:$USER_SCRIPTS:$DOTNET_TOOLS
export PATH="/home/alex/.local/bin:$PATH"

# opencode
export PATH=/home/alex/.opencode/bin:$PATH
. "$HOME/.cargo/env"
