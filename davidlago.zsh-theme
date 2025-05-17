# To use this theme, install oh-my-zsh, link this file under
# ~/.oh-my-zsh/themes/ and add modify this line ZSH_THEME="davidlago" in .zshrc:
#
# ln -sf ~/dotfiles/davidlago.zsh-theme ~/.oh-my-zsh/themes/

PROMPT='$FG[150]%c $FG[150]$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[$FG[228]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[150]] %{$fg[150]%}🌶️ "
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[150]] %{$fg[228]%}🫑 "

#TMOUT=10

TRAPALRM() {
  zle reset-prompt
}
