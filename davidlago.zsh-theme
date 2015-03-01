# To use this theme, install oh-my-zsh, link this file under
# ~/.oh-my-zsh/themes/ and add modify this line ZSH_THEME="davidlago" in .zshrc:
#
# ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/

function parent_project() {
  [[ $PWD =~ ([a-z]+)/vendor ]] && echo "$match[1] "
}

PROMPT='$FG[166]$(parent_project) %c $FG[166]$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[$FG[210]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[166]] %{$fg[red]%}♡ "
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[166]] %{$fg[red]%}♥ "

#TMOUT=10

TRAPALRM() {
  zle reset-prompt
}
