export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="davidlago"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Git aliases
alias gs="git status"
alias ga="git add -A ."
alias gc="git commit -m"
alias gb="git branch"
alias gco="git checkout"
alias glg="git lg"
alias python="python3"

# LS colors
export CLICOLOR=1
export LSCOLORS=Dxfxcxdxbxegedabagacad
export LS_COLORS='di=93:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=31:*.rpm=90'

# Neovim
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Automatically attach or launch tmux if not alrady in a session
if [ -z "$TMUX" ]; then
  tmux a || tmux
fi

source ~/.zshrc-include
