function current_dir {
  echo "${PWD/#$HOME/~}"
}

local ret_status="%(?:%{$fg_bold[green]%}💖 :%{$fg_bold[red]%}🖤 %s)"

PROMPT='
${ret_status}% \
%{$fg_bold[green]%}%p\
%{$terminfo[bold]$fg[cyan]%}\
$(current_dir) \
%{$fg_bold[blue]%}\
$(git_prompt_info)\
%{$fg_bold[yellow]%}[%*]
%{$terminfo[bold]$fg[red]%}$ \
%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}* %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
