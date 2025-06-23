PROMPT='$FG[150]%c $FG[150]$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[$FG[228]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[150]] %{$fg[150]%}🌶️ "
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[150]] %{$fg[228]%}🫑 "

TRAPALRM() {
  zle reset-prompt
}
