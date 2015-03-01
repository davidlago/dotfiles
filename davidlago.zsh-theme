# To use this theme, install oh-my-zsh, link this file under
# ~/.oh-my-zsh/themes/ and add modify this line ZSH_THEME="davidlago" in .zshrc:
#
# ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/

function parent_project() {
  [[ $PWD =~ ([a-z]+)/vendor ]] && echo "$match[1] "
}

function get_color() {
  index=$(( `date +%s` % 6 + 1))
  colors=( yellow green cyan blue red magenta )
  echo "%{$fg[${colors[$index]}]%}"
}

PROMPT='%{$fg_bold[blue]%}$(parent_project)%{$fg[cyan]%}%c  %{$fg_bold[magenta]%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}] %{$fg[red]%}♡ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[magenta]%}] %{$fg[red]%}♥ "

#TMOUT=10

TRAPALRM() {
  zle reset-prompt
}
