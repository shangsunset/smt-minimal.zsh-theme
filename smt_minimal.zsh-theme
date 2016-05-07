# smt.zsh-theme, based on dogenpunk by Matthew Nelson.

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%} !%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✓%{$reset_color%}"

PROMPT='%{$fg[magenta]%}%n%{$reset_color%} %{$fg[yellow]%}福 %{$fg[cyan]%}%~ %{$reset_color%}$(git_prompt_info)
%{$fg[cyan]%}%{$fg[cyan]%}❯❯%{$reset_color%}'
