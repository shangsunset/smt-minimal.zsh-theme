# smt.zsh-theme, based on dogenpunk by Matthew Nelson.

# MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
# local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}git:%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} ⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%} !%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✓%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"


# Colors vary depending on time lapsed.
ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[green]%}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[cyan]%}"

function prompt_char() {
  git branch >/dev/null 2>/dev/null && echo "%{$fg[green]%}❯❯%{$reset_color%}" && return
  hg root >/dev/null 2>/dev/null && echo "%{$fg_bold[red]%}❯❯%{$reset_color%}" && return
  darcs show repo >/dev/null 2>/dev/null && echo "%{$fg_bold[green]%}❉%{$reset_color%}" && return
  echo "%{$fg[cyan]%}❯❯%{$reset_color%}"
}

PROMPT='%{$fg[magenta]%}%n%{$reset_color%} 福 %{$fg[cyan]%}%~ %{$reset_color%}$(git_prompt_info)
%{$fg[cyan]%}$(prompt_char) '
